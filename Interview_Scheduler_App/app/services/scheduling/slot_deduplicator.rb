# Deduplicate scheduling slots by their start and end values.
module Scheduling
  class SlotDeduplicator
    def self.call(slots)
      Array(slots).uniq { |slot| [slot[:start_time], slot[:end_time]] }
    end
  end
end
