# Build a readable label for an interview time range.
module Interviews
  class SlotLabel
    def self.call(start_time:, end_time:)
      raise ArgumentError, "timestamps are required" unless start_time && end_time
      "#{start_time.strftime("%d %b %Y, %H:%M")} - #{end_time.strftime("%H:%M")}"
    end
  end
end
