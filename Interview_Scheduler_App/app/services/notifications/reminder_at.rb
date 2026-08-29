# Calculate when an interview reminder should be delivered.
module Notifications
  class ReminderAt
    def self.call(start_time:, minutes_before: 60)
      raise ArgumentError, "minutes_before cannot be negative" if minutes_before.to_i.negative?
      start_time - (minutes_before.to_i * 60)
    end
  end
end
