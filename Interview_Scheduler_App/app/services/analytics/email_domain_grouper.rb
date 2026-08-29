# Group participants by normalized email domain.
module Analytics
  class EmailDomainGrouper
    def self.call(participants)
      Array(participants).each_with_object({}) do |participant, groups|
        email = participant.respond_to?(:email) ? participant.email.to_s.downcase : ""
        domain = email.include?("@") ? email.split("@", 2).last : "unknown"
        (groups[domain] ||= []) << participant
      end
    end
  end
end
