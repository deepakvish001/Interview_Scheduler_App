# Normalize external participant identifiers.
module Participants
  class ExternalIdNormalizer
    def self.call(value)
      value.to_s.strip.gsub(/[^a-zA-Z0-9_-]/, "")
    end
  end
end
