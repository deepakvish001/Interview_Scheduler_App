module Interviews
  class DurationCalculator
    def self.call(start_time:, end_time:)
      raise ArgumentError, "start_time is required" if start_time.nil?
      raise ArgumentError, "end_time is required" if end_time.nil?
      raise ArgumentError, "end_time must be after start_time" unless end_time > start_time

      (end_time - start_time).to_i
    end
  end
end
