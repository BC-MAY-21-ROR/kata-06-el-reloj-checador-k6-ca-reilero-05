module Admin
  class ReportsController < Admin::ApplicationController
    def index
      @attendances = Attendance.where("action = 'checkin'").count
      @date = Date.today
      @result_absence = absences
    end

    private

    def absences
      @absence = Attendance.where("action = 'checkout'").size
      @time = Time.zone.now
      @days = @time.end_of_month.day
      @days - @absence
    end
  end
end
