class HomeController < ApplicationController
  def index
  end

  def check
    employee = Employee.find_by(secret_number: params[:secret_number])
    if employee
      employee.attendances.create(check_datetime: params[:data], action: employee.presence ? 'checkout' : 'checkin')
      employee.update(presence: !employee.presence)
      redirect_to '/', flash: { msg: "You have successfully checked." }
    else
      redirect_to '/', flash: { msg: "Invalid secret number." }
    end
  end
end
