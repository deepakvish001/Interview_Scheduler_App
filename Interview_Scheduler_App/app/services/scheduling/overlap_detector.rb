# Detect whether two half-open scheduling ranges overlap.
module Scheduling
  class OverlapDetector
    def self.call(first_start:, first_end:, second_start:, second_end:)
      raise ArgumentError, "invalid first range" unless first_start && first_end && first_end > first_start
      raise ArgumentError, "invalid second range" unless second_start && second_end && second_end > second_start
      first_start < second_end && second_start < first_end
    end
  end
end
