# Calculate interview duration in decimal hours.
module Interviews
  class DurationHours
    def self.call(start_time:, end_time:)
      raise ArgumentError, "end_time must follow start_time" unless end_time && start_time && end_time > start_time
      ((end_time - start_time) / 3600.0).round(2)
    end
  end
end
