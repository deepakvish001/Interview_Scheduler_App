# Count valid interview records in a collection.
module Analytics
  class InterviewCounter
    def self.call(interviews)
      Array(interviews).compact.length
    end
  end
end
