# Build a consistent interview reminder email subject.
module Notifications
  class ReminderSubject
    def self.call(reference)
      "Reminder: interview #{reference}"
    end
  end
end
