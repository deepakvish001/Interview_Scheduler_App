# Normalize interview type labels.
module Interviews
  class InterviewTypeNormalizer
    def self.call(value)
      value.to_s.strip.downcase.tr(" -", "_")
    end
  end
end
