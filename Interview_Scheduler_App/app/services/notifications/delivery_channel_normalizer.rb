# Normalize notification channel preferences.
module Notifications
  class DeliveryChannelNormalizer
    def self.call(value)
      value.to_s.strip.downcase.tr("-", "_")
    end
  end
end
