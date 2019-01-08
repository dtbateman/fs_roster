class VolunteersController < ApplicationController
  def new
    @volunteer= Volunteer.new
  end

   def create
    @admin= Volunteer.first
    @volunteer = Volunteer.create(volunteer_params)
    @volunteer.save
    if @volunteer.save
            flash[:success] = "Successfully Registered!"        

            #email notifes admin of new registration
        NotifyMailer.notify_email(@volunteer).deliver_now

        redirect_to '/volunteer'
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
  def volunteer_params
    params.require(:volunteer).permit(:first_name, :last_name, :gender, :email, :birthdate, :phone, :streetname, :city, :state, :zip, :baptism_date, :baptism_importance, :christian_story, :questions)

  end
end
