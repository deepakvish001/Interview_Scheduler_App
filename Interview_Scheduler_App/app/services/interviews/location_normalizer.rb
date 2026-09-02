# Normalize interview location labels.
module Interviews
  class LocationNormalizer
    def self.call(value)
      value.to_s.strip.gsub(/\s+/, " ")
    end
  end
end
