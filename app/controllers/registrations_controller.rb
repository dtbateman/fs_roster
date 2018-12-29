class RegistrationsController < ApplicationController
  def new
    @registration= Registration.new
  end

  def create
       @registration = Registration.create(registration_params)
    @registration.save
    if @registration.save

        flash[:notice] = "Successfully Registered!"

        redirect_to '/signup'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

  private 
  private
  def registration_params
    params.require(:registration).permit(:first_name, :last_name, :gender, :email, :nationality, :religion, :birthdate, :phone, :streetname, :city, :state, :zip, :need_ride, :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay)

  end
end
