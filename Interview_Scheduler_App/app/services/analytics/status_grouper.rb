# Group interview-like records by normalized status.
module Analytics
  class StatusGrouper
    def self.call(interviews)
      Array(interviews).group_by do |interview|
        interview.respond_to?(:status) ? interview.status.to_s.downcase : "unknown"
      end
    end
  end
end
