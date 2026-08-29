# Build a consistent cancellation email subject.
module Notifications
  class CancellationSubject
    def self.call(reference)
      "Interview #{reference} has been cancelled"
    end
  end
end
