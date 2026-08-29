# Expand an interview range by a configurable minute buffer.
module Scheduling
  class BufferWindow
    def self.call(start_time:, end_time:, minutes:)
      raise ArgumentError, "minutes cannot be negative" if minutes.to_i.negative?
      seconds = minutes.to_i * 60
      { start_time: start_time - seconds, end_time: end_time + seconds }
    end
  end
end
