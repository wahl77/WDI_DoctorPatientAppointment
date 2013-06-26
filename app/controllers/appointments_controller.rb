class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end
  
  def create
    @appointment = Appointment.create(params[:appointment])
    redirect_to root_path
  end
  
  def edit
    @appointment = Appointment.find(params[:id])
  end
  
  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update_attributes(params[:appointment])
    redirect_to root_path
  end
  
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to root_path
  end
end
