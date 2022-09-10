class HomeController < ApplicationController
  def index
  end

  def make_attendance
    employee = Employee.find_by(secret_number: params[:secret_number])
    if employee
      if employee.presence
        employee.attendances.create(check_datetime: params[:data], action: 'checkout')
      else
        employee.attendances.create(check_datetime: params[:data], action: 'checkin')
      end
      employee.presence = !employee.presence
      employee.update
      format.html { redirect_to new_user_session_path, notice: "Attendance was successfully created." }
    else
      # No esta
      # Muestro un mensaje de error, codigo invalido
      format.html { redirect_to home_path, notice: "Invalid code." }
      format.json { render :index}
    end
  end
end
