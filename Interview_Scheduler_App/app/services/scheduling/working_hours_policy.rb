# Check whether an interview fits within configured daily working hours.
module Scheduling
  class WorkingHoursPolicy
    def self.call(start_time:, end_time:, opens_at: 9, closes_at: 18)
      return false unless start_time && end_time && end_time > start_time
      start_time.hour >= opens_at.to_i && end_time.hour <= closes_at.to_i
    end
  end
end
