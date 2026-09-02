require "test_helper"

class Interviews::DurationCalculatorTest < ActiveSupport::TestCase
  test "returns the interview duration in seconds" do
    start_time = Time.zone.parse("2026-09-01 10:00")
    end_time = Time.zone.parse("2026-09-01 10:45")

    assert_equal 2_700, Interviews::DurationCalculator.call(start_time: start_time, end_time: end_time)
  end

  test "rejects an invalid time range" do
    instant = Time.zone.parse("2026-09-01 10:00")

    assert_raises(ArgumentError) do
      Interviews::DurationCalculator.call(start_time: instant, end_time: instant)
    end
  end
end
