# Build a stable month key for analytics aggregation.
module Analytics
  class MonthKey
    def self.call(time)
      raise ArgumentError, "time is required" if time.nil?
      time.strftime("%Y-%m")
    end
  end
end
