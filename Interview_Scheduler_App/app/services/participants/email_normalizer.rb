# Normalize participant email addresses before persistence.
module Participants
  class EmailNormalizer
    def self.call(value)
      return nil if value.nil?
      normalized = value.to_s.strip.downcase
      normalized.empty? ? nil : normalized
    end
  end
end
