# Round a proposed end time down to its scheduling interval.
module Scheduling
  class EndTimeRounder
    def self.call(time, interval_minutes: 15)
      raise ArgumentError, "interval must be positive" unless interval_minutes.to_i.positive?
      interval = interval_minutes.to_i * 60
      Time.at((time.to_i / interval) * interval).getlocal(time.utc_offset)
    end
  end
end
