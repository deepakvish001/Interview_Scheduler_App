# Build a deterministic lightweight fingerprint for notification deduplication.
module Notifications
  class MessageFingerprint
    def self.call(parts)
      require "digest"
      Digest::SHA256.hexdigest(Array(parts).map(&:to_s).join("|"))
    end
  end
end
