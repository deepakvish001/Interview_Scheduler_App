# Calculate interview duration in whole minutes.
module Interviews
  class DurationMinutes
    def self.call(start_time:, end_time:)
      raise ArgumentError, "end_time must follow start_time" unless end_time && start_time && end_time > start_time
      ((end_time - start_time) / 60).to_i
    end
  end
end
