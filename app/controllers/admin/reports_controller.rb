module Admin
  class ReportsController < Admin::ApplicationController
    def index
      @attendances = Attendance.where("action = 'checkin'").count
      @date = Date.today
      @result_absence = absences
      @average_checkin = average_time('checkin')
      @average_checkout = average_time('checkout')
    end

    private

    def absences
      absence = Attendance.where("action = 'checkout'").size
      time = Time.zone.now
      days = time.end_of_month.day
      days - absence
    end

    private

    def average_time(action)
      check_actions = Attendance.where("action = '#{action}'").select do |attendance|
        attendance.check_datetime.month == Time.now.month
      end
      total_time = check_actions.map {|attendance|
        attendance.check_datetime.to_i}.sum
      average = total_time / check_actions.size
      Time.at(average)
    end
  end
end
