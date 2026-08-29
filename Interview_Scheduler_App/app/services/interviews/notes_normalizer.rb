# Normalize multiline interview notes and remove trailing whitespace.
module Interviews
  class NotesNormalizer
    def self.call(value)
      value.to_s.lines.map(&:rstrip).join("\n").strip
    end
  end
end
