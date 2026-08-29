# Build a consistent rescheduling email subject.
module Notifications
  class RescheduleSubject
    def self.call(reference)
      "Interview #{reference} has been rescheduled"
    end
  end
end
