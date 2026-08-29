# Count attendance values in an enumerable.
module Analytics
  class AttendanceCounter
    def self.call(records)
      Array(records).each_with_object(Hash.new(0)) do |record, counts|
        status = record.respond_to?(:attendance_status) ? record.attendance_status.to_s : "unknown"
        counts[status] += 1
      end
    end
  end
end
