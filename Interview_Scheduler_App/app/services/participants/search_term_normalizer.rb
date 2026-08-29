# Normalize participant search terms for predictable matching.
module Participants
  class SearchTermNormalizer
    def self.call(value)
      value.to_s.strip.downcase.gsub(/\s+/, " ")
    end
  end
end
