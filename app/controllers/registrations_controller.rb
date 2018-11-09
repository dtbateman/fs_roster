class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      flash[:success] = "Registration successful!"
      redirect_to registration_path(@registration)
    else
      flash[:error] = "There was a problem saving your registration."
      render :new
    end
  end

  def show
    @registration = Registration.find(params[:id])
  end

private

  def registration_params
    params.require(:registration).permit(:first_name, :last_name, :gender, :nationality,
      :religion, :birthdate, :phone, :string, :city, :postal_code, :has_transportation,
      :martial_status, :spouse_name, :english_fluency, :expectations, :anticipated_residency_duration)
  end
end
