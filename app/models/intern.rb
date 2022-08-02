class Intern < ActiveRecord::Base
  belongs_to :doctor # enables intern.doctor
                     # enables a new "field" new(doctor: Doctor.find(1))

  # validates :first_name, presence: true
  # validates :last_name, presence: true

  validates :first_name, :last_name, :doctor, presence: true

  # validates :first_name, uniqueness: true
  # validates :last_name, uniqueness: true

  # Validates that the pair first_name + last_name is unique
  validates :first_name, uniqueness: { scope: :last_name }
  # validates :last_name, uniqueness: { scope: :first_name }
end
