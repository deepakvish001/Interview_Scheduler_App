# Calculate the latest allowed cancellation timestamp.
module Interviews
  class CancellationDeadline
    def self.call(start_time:, hours_before: 24)
      raise ArgumentError, "hours_before cannot be negative" if hours_before.to_i.negative?
      start_time - (hours_before.to_i * 3600)
    end
  end
end
