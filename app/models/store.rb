# frozen_string_literal: true

#Store class
class Store < ApplicationRecord
  has_many :employees
  validates_associated :employees

  validates :name, :address, presence: true
end
