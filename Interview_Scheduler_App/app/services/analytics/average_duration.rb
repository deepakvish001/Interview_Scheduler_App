# Calculate average duration from a minute collection.
module Analytics
  class AverageDuration
    def self.call(durations)
      values = Array(durations).compact.map(&:to_f)
      return 0.0 if values.empty?
      (values.sum / values.length).round(2)
    end
  end
end
