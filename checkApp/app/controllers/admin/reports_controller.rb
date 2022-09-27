module Admin
  class ReportsController < Admin::ApplicationController
    def index
      @attendances = Attendance.where("action = 'checkin'").count
      @date = Date.today

      @absence = Attendance.where("action = 'checkout'").size
      @time = Time.zone.now
      @days = @time.end_of_month.day
      @result_absence = @days - @absence
    end
  end
end
