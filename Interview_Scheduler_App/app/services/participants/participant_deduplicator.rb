# Deduplicate participant collections using email when available.
module Participants
  class ParticipantDeduplicator
    def self.call(participants)
      Array(participants).compact.uniq do |participant|
        participant.respond_to?(:email) ? participant.email.to_s.downcase : participant
      end
    end
  end
end
