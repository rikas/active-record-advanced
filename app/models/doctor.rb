class Doctor < ActiveRecord::Base
  has_many :interns, dependent: :destroy # enables doctor.interns
  has_many :consultations, dependent: :destroy
  has_many :patients, through: :consultations
end

# doctor = Doctor.first

# interns = Intern.where(doctor: doctor)
# intern_names = interns.map do |intern|
#   "#{intern.first_name} #{intern.last_name}"
# end


# p intern_names
