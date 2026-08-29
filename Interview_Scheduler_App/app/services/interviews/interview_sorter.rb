# Sort interviews chronologically with a stable id fallback.
module Interviews
  class InterviewSorter
    def self.call(interviews)
      Array(interviews).sort_by do |interview|
        start_time = interview.respond_to?(:start_time) ? interview.start_time : nil
        id = interview.respond_to?(:id) ? interview.id.to_i : 0
        [start_time || Time.at(0), id]
      end
    end
  end
end
