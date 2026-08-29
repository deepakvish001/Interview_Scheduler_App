# Resolve a display status from interview timestamps.
module Interviews
  class StatusResolver
    def self.call(start_time:, end_time:, now: Time.now)
      return :unscheduled unless start_time && end_time
      return :upcoming if now < start_time
      return :in_progress if now <= end_time
      :completed
    end
  end
end
