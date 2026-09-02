# Normalize uploaded resume extensions for validation.
module Participants
  class ResumeExtensionNormalizer
    def self.call(value)
      value.to_s.strip.downcase.sub(/\A\./, "")
    end
  end
end
