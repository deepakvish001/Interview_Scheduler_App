# Normalize and deduplicate interview tags.
module Interviews
  class TagNormalizer
    def self.call(values)
      Array(values).map { |value| value.to_s.strip.downcase }.reject(&:empty?).uniq.sort
    end
  end
end
