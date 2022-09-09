class HomeController < ApplicationController
  def index
  end

  def make_attendance
    employee = Employee.find_by(secret_number: params[:secret_number])
    puts employee
  end
end
