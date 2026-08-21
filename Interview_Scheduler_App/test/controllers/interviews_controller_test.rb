require 'test_helper'

class InterviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview_one = Interview.create!(
      start_time: Time.new(2030, 1, 1, 10, 0),
      end_time: Time.new(2030, 1, 1, 11, 0)
    )
    @interview_two = Interview.create!(
      start_time: Time.new(2030, 2, 1, 10, 0),
      end_time: Time.new(2030, 2, 1, 11, 0)
    )
    @participant_a = Participant.create!(name: 'Alice', email: 'alice@example.com')
    @participant_b = Participant.create!(name: 'Bob', email: 'bob@example.com')
    InterviewParticipant.create!(interview_id: @interview_two.id, participant_id: @participant_a.id)
  end

  def multi_param_time(prefix, time)
    {
      "#{prefix}(1i)" => time.year,
      "#{prefix}(2i)" => time.month,
      "#{prefix}(3i)" => time.day,
      "#{prefix}(4i)" => time.hour,
      "#{prefix}(5i)" => time.min,
    }
  end

  test 'updating one interview does not change the start/end time of other interviews' do
    new_start = Time.new(2030, 6, 1, 10, 0)
    new_end = Time.new(2030, 6, 1, 11, 0)

    patch interview_url(@interview_two), params: {
      interview: multi_param_time('start_time', new_start).merge(multi_param_time('end_time', new_end)),
      participants: @participant_b.id.to_s,
    }

    @interview_one.reload
    @interview_two.reload

    assert_not_equal new_start, @interview_one.start_time,
      'editing interview_two must not touch interview_one'
    assert_equal new_start, @interview_two.start_time
    assert_equal new_end, @interview_two.end_time
  end

  test 'updating an interview replaces its participant list instead of collapsing to one id' do
    new_start = Time.new(2030, 6, 1, 10, 0)
    new_end = Time.new(2030, 6, 1, 11, 0)

    patch interview_url(@interview_two), params: {
      interview: multi_param_time('start_time', new_start).merge(multi_param_time('end_time', new_end)),
      participants: "#{@participant_a.id},#{@participant_b.id}",
    }

    ids = InterviewParticipant.where(interview_id: @interview_two.id).pluck(:participant_id).sort
    assert_equal [@participant_a.id, @participant_b.id].sort, ids
  end

  test 'updating an interview sends a reminder to each participant without raising' do
    new_start = Time.new(2030, 6, 1, 10, 0)
    new_end = Time.new(2030, 6, 1, 11, 0)

    assert_emails 1 do
      patch interview_url(@interview_two), params: {
        interview: multi_param_time('start_time', new_start).merge(multi_param_time('end_time', new_end)),
        participants: @participant_b.id.to_s,
      }
    end

    assert_redirected_to interview_url(@interview_two)
  end
end
