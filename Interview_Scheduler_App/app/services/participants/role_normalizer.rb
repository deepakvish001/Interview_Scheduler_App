# Normalize participant role names.
module Participants
  class RoleNormalizer
    def self.call(value)
      value.to_s.strip.downcase.tr(" ", "_")
    end
  end
end
