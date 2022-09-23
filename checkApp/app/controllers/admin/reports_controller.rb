module Admin
    class ReportsController < Admin::ApplicationController
      def index
        @attendances = Attendance.where("action = 'checkin'")
        @employees = Employee.all
      end
    end
end