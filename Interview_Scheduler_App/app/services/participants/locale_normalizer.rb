# Normalize locale values to language-region form.
module Participants
  class LocaleNormalizer
    def self.call(value)
      parts = value.to_s.strip.tr("_", "-").split("-")
      return "" if parts.empty?
      [parts.first.downcase, parts[1]&.upcase].compact.join("-")
    end
  end
end
