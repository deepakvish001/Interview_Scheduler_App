# Check whether another interview can be accepted for a period.
module Scheduling
  class CapacityPolicy
    def self.call(scheduled_count:, capacity:)
      raise ArgumentError, "capacity cannot be negative" if capacity.to_i.negative?
      scheduled_count.to_i < capacity.to_i
    end
  end
end
