class StaticPagesController < ApplicationController
  def all
    @doctors = Doctor.all
    @patients = Patient.all
    @appointments = Appointment.all
  end
end
