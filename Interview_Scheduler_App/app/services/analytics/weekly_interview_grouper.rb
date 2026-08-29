# Group interviews by ISO calendar week.
module Analytics
  class WeeklyInterviewGrouper
    def self.call(interviews)
      Array(interviews).each_with_object({}) do |interview, groups|
        next unless interview.respond_to?(:start_time) && interview.start_time
        key = interview.start_time.to_date.cweek
        (groups[key] ||= []) << interview
      end
    end
  end
end
