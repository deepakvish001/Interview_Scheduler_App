# Find time slots shared by every availability collection.
module Scheduling
  class AvailabilityIntersection
    def self.call(availability_sets)
      sets = Array(availability_sets).map { |set| Array(set) }
      return [] if sets.empty?
      sets.reduce { |shared, set| shared & set }
    end
  end
end
