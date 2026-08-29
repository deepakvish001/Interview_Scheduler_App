# Resolve delivery priority from time remaining.
module Notifications
  class NotificationPriority
    def self.call(minutes_until_start)
      minutes = minutes_until_start.to_i
      return :urgent if minutes <= 30
      return :high if minutes <= 120
      :normal
    end
  end
end
