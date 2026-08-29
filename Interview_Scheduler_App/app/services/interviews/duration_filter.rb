# Filter interviews by an inclusive duration range in minutes.
module Interviews
  class DurationFilter
    def self.call(interviews, minimum_minutes: 0, maximum_minutes: nil)
      Array(interviews).select do |interview|
        next false unless interview.respond_to?(:start_time) && interview.respond_to?(:end_time) && interview.start_time && interview.end_time
        minutes = ((interview.end_time - interview.start_time) / 60.0)
        minutes >= minimum_minutes && (maximum_minutes.nil? || minutes <= maximum_minutes)
      end
    end
  end
end
