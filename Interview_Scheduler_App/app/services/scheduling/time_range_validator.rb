# Validate that a scheduling range has ordered timestamps.
module Scheduling
  class TimeRangeValidator
    def self.call(start_time:, end_time:)
      !start_time.nil? && !end_time.nil? && end_time > start_time
    end
  end
end
