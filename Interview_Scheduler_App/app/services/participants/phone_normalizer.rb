# Normalize phone numbers into digits with an optional leading plus.
module Participants
  class PhoneNormalizer
    def self.call(value)
      raw = value.to_s.strip
      prefix = raw.start_with?("+") ? "+" : ""
      digits = raw.gsub(/\D/, "")
      prefix + digits
    end
  end
end
