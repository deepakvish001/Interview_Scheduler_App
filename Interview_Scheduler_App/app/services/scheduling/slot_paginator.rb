# Return one deterministic page from a scheduling slot collection.
module Scheduling
  class SlotPaginator
    def self.call(slots, page: 1, per_page: 20)
      raise ArgumentError, "page must be positive" unless page.to_i.positive?
      raise ArgumentError, "per_page must be positive" unless per_page.to_i.positive?
      offset = (page.to_i - 1) * per_page.to_i
      Array(slots).slice(offset, per_page.to_i) || []
    end
  end
end
