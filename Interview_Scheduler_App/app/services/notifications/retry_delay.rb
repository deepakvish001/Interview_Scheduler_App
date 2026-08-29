# Calculate bounded exponential retry delay in seconds.
module Notifications
  class RetryDelay
    def self.call(attempt:, base_seconds: 30, maximum_seconds: 3600)
      raise ArgumentError, "attempt cannot be negative" if attempt.to_i.negative?
      [base_seconds.to_i * (2 ** attempt.to_i), maximum_seconds.to_i].min
    end
  end
end
