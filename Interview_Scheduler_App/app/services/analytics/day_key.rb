# Build a stable day key for analytics aggregation.
module Analytics
  class DayKey
    def self.call(time)
      raise ArgumentError, "time is required" if time.nil?
      time.strftime("%Y-%m-%d")
    end
  end
end
