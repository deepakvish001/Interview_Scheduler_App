# Parse a comma-separated participant id list into unique positive integers.
module Participants
  class ParticipantIdParser
    def self.call(value)
      value.to_s.split(",").map { |item| item.strip.to_i }.select { |id| id.positive? }.uniq
    end
  end
end
