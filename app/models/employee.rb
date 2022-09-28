class Employee < ApplicationRecord
  has_many :attendances
  validates_associated :attendances
  
  validates :name, :position, :email, :secret_number, presence: true
  
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :secret_number, numericality: { only_integer: true }
  
  validates :email, :secret_number, uniqueness: true 


  belongs_to :store
end
