# Build a compact calendar event description.
module Notifications
  class CalendarDescription
    def self.call(reference:, participant_count:)
      "Interview #{reference} with #{participant_count.to_i} participant(s)"
    end
  end
end
