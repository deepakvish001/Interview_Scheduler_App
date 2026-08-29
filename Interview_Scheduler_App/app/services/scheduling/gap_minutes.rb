# Calculate the non-negative gap between two interviews.
module Scheduling
  class GapMinutes
    def self.call(first_end:, second_start:)
      return 0 unless first_end && second_start && second_start > first_end
      ((second_start - first_end) / 60).to_i
    end
  end
end
