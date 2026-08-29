# Select interviews scheduled on a requested calendar date.
module Interviews
  class SameDaySelector
    def self.call(interviews, date:)
      Array(interviews).select { |interview| interview.respond_to?(:start_time) && interview.start_time && interview.start_time.to_date == date }
    end
  end
end
