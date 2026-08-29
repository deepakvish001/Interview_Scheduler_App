# Sort participants by normalized name and stable id.
module Participants
  class ParticipantSorter
    def self.call(participants)
      Array(participants).sort_by do |participant|
        name = participant.respond_to?(:name) ? participant.name.to_s.downcase : ""
        id = participant.respond_to?(:id) ? participant.id.to_i : 0
        [name, id]
      end
    end
  end
end
