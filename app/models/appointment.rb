class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  attr_accessible :end_time, :start_time, :doctor_id, :patient_id
  
  validates :doctor,
    presence:true
  
  validates :patient,
    presence:true
end
