# Build a consistent interview invitation email subject.
module Notifications
  class InvitationSubject
    def self.call(reference)
      "Invitation to interview #{reference}"
    end
  end
end
