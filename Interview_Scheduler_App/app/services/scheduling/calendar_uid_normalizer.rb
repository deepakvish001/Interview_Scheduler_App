# Normalize external calendar identifiers for comparison.
module Scheduling
  class CalendarUidNormalizer
    def self.call(value)
      value.to_s.strip.downcase
    end
  end
end
