# Normalize and deduplicate participant skills.
module Participants
  class SkillNormalizer
    def self.call(values)
      Array(values).map { |value| value.to_s.strip.downcase }.reject(&:empty?).uniq.sort
    end
  end
end
