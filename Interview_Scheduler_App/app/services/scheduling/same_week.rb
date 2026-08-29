# Check whether two timestamps fall in the same ISO week.
module Scheduling
  class SameWeek
    def self.call(first_time:, second_time:)
      return false if first_time.nil? || second_time.nil?
      [first_time.to_date.cwyear, first_time.to_date.cweek] == [second_time.to_date.cwyear, second_time.to_date.cweek]
    end
  end
end
