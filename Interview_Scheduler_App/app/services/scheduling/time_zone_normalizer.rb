# Normalize time-zone identifiers submitted by scheduling clients.
module Scheduling
  class TimeZoneNormalizer
    def self.call(value)
      value.to_s.strip.gsub(/\s+/, "_")
    end
  end
end
