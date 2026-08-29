# Round a proposed start time up to the next interval.
module Scheduling
  class StartTimeRounder
    def self.call(time, interval_minutes: 15)
      raise ArgumentError, "interval must be positive" unless interval_minutes.to_i.positive?
      interval = interval_minutes.to_i * 60
      Time.at((time.to_i.to_f / interval).ceil * interval).getlocal(time.utc_offset)
    end
  end
end
