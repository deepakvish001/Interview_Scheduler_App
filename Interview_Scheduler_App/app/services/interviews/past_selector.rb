# Select interviews that have already ended.
module Interviews
  class PastSelector
    def self.call(interviews, now: Time.now)
      Array(interviews).select { |interview| interview.respond_to?(:end_time) && interview.end_time && interview.end_time < now }
    end
  end
end
