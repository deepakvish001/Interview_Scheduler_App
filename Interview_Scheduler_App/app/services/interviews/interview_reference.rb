# Build a stable human-readable interview reference.
module Interviews
  class InterviewReference
    def self.call(interview_id, prefix: "INT")
      raise ArgumentError, "interview_id must be positive" unless interview_id.to_i.positive?
      "#{prefix}-#{interview_id.to_i.to_s.rjust(6, "0")}"
    end
  end
end
