class PeopleController < ApplicationController
  def new
    @person = Person.new
  end
  
  def create
    case params[:type]
    when 'Doctor'
      Doctor.create(params[:person])
    when 'Patient'
      Patient.create(params[:person])
    end
    redirect_to root_path
  end
  
  def update
    person = Person.find(params[:id])
    person.update_attributes(params[:person])
    redirect_to root_path
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to root_path
  end
  
  def show
  end
  
  def edit
    @person = Person.find(params[:id])
  end
  
end
