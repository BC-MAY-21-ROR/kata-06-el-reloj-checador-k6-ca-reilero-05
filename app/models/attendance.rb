# frozen_string_literal: true

#Attendance class
class Attendance < ApplicationRecord
  validates :action, :check_datetime, presence: true
  validates :action, inclusion: { in: %w[checkin checkout] }
  belongs_to :employee
end
