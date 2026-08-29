# Check whether a date is a weekday.
module Scheduling
  class BusinessDayChecker
    def self.call(date)
      return false if date.nil?
      (1..5).cover?(date.wday)
    end
  end
end
