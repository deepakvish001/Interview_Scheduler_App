# Group interviews by their scheduled calendar date.
module Analytics
  class DailyInterviewGrouper
    def self.call(interviews)
      Array(interviews).each_with_object({}) do |interview, groups|
        next unless interview.respond_to?(:start_time) && interview.start_time
        (groups[interview.start_time.to_date] ||= []) << interview
      end
    end
  end
end
