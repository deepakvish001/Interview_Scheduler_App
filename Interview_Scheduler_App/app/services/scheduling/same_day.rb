# Check whether two timestamps fall on the same calendar date.
module Scheduling
  class SameDay
    def self.call(first_time:, second_time:)
      return false if first_time.nil? || second_time.nil?
      first_time.to_date == second_time.to_date
    end
  end
end
