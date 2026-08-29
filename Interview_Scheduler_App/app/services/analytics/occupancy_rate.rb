# Calculate scheduling occupancy as a bounded percentage.
module Analytics
  class OccupancyRate
    def self.call(booked_minutes:, available_minutes:)
      return 0.0 unless available_minutes.to_f.positive?
      rate = (booked_minutes.to_f / available_minutes.to_f) * 100
      [[rate, 0.0].max, 100.0].min.round(2)
    end
  end
end
