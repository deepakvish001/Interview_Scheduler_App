# Calculate total scheduled interview minutes.
module Analytics
  class TotalDuration
    def self.call(durations)
      Array(durations).compact.map(&:to_f).sum
    end
  end
end
