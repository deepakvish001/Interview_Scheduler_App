# Select participants that do not have a usable email address.
module Participants
  class MissingEmailSelector
    def self.call(participants)
      Array(participants).select { |participant| !participant.respond_to?(:email) || participant.email.to_s.strip.empty? }
    end
  end
end
