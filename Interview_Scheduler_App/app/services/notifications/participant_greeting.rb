# Build a safe participant greeting.
module Notifications
  class ParticipantGreeting
    def self.call(name)
      clean_name = name.to_s.strip
      clean_name.empty? ? "Hello" : "Hello #{clean_name}"
    end
  end
end
