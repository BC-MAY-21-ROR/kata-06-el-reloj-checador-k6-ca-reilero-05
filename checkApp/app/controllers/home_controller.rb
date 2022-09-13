class HomeController < ApplicationController
  def index
  end

  def check
    employee = Employee.find_by(secret_number: params[:secret_number])
    if employee && employee.status
      employee.attendances.create(check_datetime: params[:data], action: employee.presence ? 'checkout' : 'checkin')
      employee.update(presence: !employee.presence)
      redirect_to '/', flash: { msg: "You have successfully checked.", class: 'success' }
    elsif employee
      redirect_to '/', flash: { msg: "This secret number belongs to an inactive employee." , class: 'error'}
    else
      redirect_to '/', flash: { msg: "Invalid secret number.", class: 'error' }
    end
  end
end
