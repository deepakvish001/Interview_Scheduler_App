# Check whether an interview remains inside the rescheduling window.
module Scheduling
  class RescheduleWindowPolicy
    def self.call(start_time:, now: Time.now, minimum_notice_hours: 2)
      return false unless start_time
      start_time >= now + (minimum_notice_hours.to_i * 3600)
    end
  end
end
