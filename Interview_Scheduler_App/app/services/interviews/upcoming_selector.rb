# Select interviews that have not started yet.
module Interviews
  class UpcomingSelector
    def self.call(interviews, now: Time.now)
      Array(interviews).select { |interview| interview.respond_to?(:start_time) && interview.start_time && interview.start_time >= now }
    end
  end
end
