# Classify interview length into short, standard, or extended buckets.
module Analytics
  class DurationBucket
    def self.call(minutes)
      value = minutes.to_i
      return :short if value < 30
      return :standard if value <= 60
      :extended
    end
  end
end
