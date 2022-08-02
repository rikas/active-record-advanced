class Consultation < ActiveRecord::Base
  # Use belongs_to every time you have a foreign_key
  # When your table has a *_id
  belongs_to :doctor
  belongs_to :patient
end
