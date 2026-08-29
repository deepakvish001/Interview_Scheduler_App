# Normalize interview status values.
module Interviews
  class StatusNormalizer
    def self.call(value)
      value.to_s.strip.downcase.tr(" ", "_")
    end
  end
end
