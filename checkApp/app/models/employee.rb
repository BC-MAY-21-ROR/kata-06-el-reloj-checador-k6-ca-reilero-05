class Employee < ApplicationRecord
  has_many :attendances
  belongs_to :store
end
