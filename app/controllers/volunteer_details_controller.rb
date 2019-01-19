class VolunteerDetailsController < ApplicationController
  def new
    @volunteer= Volunteer_Details.new
  end

  def create
    @volunteer = Volunteer_Details.create(volunteer_detail_params)
    @volunteer.save
    if @volunteer.save
            flash[:success] = "Successfully Registered!"        

            #email notifes admin of new registration
        NotifyMailer.notify_email(@volunteer).deliver_later

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
    def volunteer_detail_params
      params.require(:volunteer_detail).permit(:first_name, :last_name, :gender, :email, :birthdate, :phone, :street_name, :city, :state, :zip, :baptism_date, :baptism_importance, :christian_story, :questions, :nationality, :religion, :need_ride, 
        :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay, :exact_length, :volunteer_id, :matched, :returned_home, :participant_id, :participant_id_id)

    end
end
