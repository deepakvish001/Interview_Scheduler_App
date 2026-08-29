# Mask participant email addresses for logs and UI previews.
module Participants
  class EmailMasker
    def self.call(email)
      local, domain = email.to_s.split("@", 2)
      return "" if local.to_s.empty? || domain.to_s.empty?
      visible = local[0]
      "#{visible}#{"*" * [local.length - 1, 1].max}@#{domain}"
    end
  end
end
