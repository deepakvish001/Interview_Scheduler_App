# Normalize meeting URLs and remove trailing slashes.
module Interviews
  class MeetingUrlNormalizer
    def self.call(value)
      value.to_s.strip.sub(%r{/+\z}, "")
    end
  end
end
