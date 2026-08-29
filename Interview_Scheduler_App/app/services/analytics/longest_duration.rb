# Return the longest valid interview duration.
module Analytics
  class LongestDuration
    def self.call(durations)
      Array(durations).compact.map(&:to_f).max || 0.0
    end
  end
end
