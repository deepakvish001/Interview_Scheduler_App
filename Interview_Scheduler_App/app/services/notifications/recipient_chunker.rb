# Split notification recipients into bounded delivery batches.
module Notifications
  class RecipientChunker
    def self.call(recipients, batch_size: 50)
      raise ArgumentError, "batch_size must be positive" unless batch_size.to_i.positive?
      Array(recipients).each_slice(batch_size.to_i).to_a
    end
  end
end
