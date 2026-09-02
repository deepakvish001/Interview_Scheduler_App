# Normalize ISO-style participant country codes.
module Participants
  class CountryCodeNormalizer
    def self.call(value)
      value.to_s.strip.upcase[0, 2]
    end
  end
end
