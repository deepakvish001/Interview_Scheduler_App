# Build a unique list of deliverable participant email addresses.
module Notifications
  class RecipientListBuilder
    def self.call(participants)
      Array(participants).map { |participant| participant.respond_to?(:email) ? participant.email : nil }.compact.map { |email| email.to_s.strip.downcase }.reject(&:empty?).uniq
    end
  end
end
