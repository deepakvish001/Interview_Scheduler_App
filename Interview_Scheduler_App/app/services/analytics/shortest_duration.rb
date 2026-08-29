# Return the shortest valid interview duration.
module Analytics
  class ShortestDuration
    def self.call(durations)
      Array(durations).compact.map(&:to_f).min || 0.0
    end
  end
end
