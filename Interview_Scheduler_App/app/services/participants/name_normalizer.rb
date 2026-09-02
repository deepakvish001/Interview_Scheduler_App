# Normalize participant names while preserving readable capitalization.
module Participants
  class NameNormalizer
    def self.call(value)
      return nil if value.nil?
      normalized = value.to_s.strip.split(/\s+/).map(&:capitalize).join(" ")
      normalized.empty? ? nil : normalized
    end
  end
end
