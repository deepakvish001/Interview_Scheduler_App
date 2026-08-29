# Build a stable ISO-week key for analytics aggregation.
module Analytics
  class WeekKey
    def self.call(time)
      raise ArgumentError, "time is required" if time.nil?
      date = time.to_date
      format("%04d-W%02d", date.cwyear, date.cweek)
    end
  end
end
