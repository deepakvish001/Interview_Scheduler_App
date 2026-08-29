# Build a URL-safe meeting slug from a label and identifier.
module Interviews
  class MeetingSlug
    def self.call(label, identifier)
      base = label.to_s.strip.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-|\-\z/, "")
      [base, identifier.to_s.strip].reject(&:empty?).join("-")
    end
  end
end
