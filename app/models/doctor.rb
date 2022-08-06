class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  # to give relationship with the patients table
  has_many :patients, through: :consultations
  # Adds a validation that a doctor MUST have a last name
  validates :last_name, presence: true
end
