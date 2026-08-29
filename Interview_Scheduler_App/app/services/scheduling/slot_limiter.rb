# Limit a slot collection without mutating its source.
module Scheduling
  class SlotLimiter
    def self.call(slots, limit:)
      raise ArgumentError, "limit cannot be negative" if limit.to_i.negative?
      Array(slots).first(limit.to_i)
    end
  end
end
