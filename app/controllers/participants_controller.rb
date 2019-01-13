class ParticipantsController < ApplicationController
  def new
    @participant= Participant.new
  end

  def new2
    # @participant= Participant.new
  end

  def create
     @participant = Participant.create(participant_params)
    @participant.save
    if @participant.save
            flash[:success] = "Successfully Registered!"        

            #email notifes admin of new registration
        NotifyMailer.notify_email(@participant).deliver_now

        redirect_to '/signup'
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
  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :gender, :email, :birthdate, :phone, :street_name, :city, :state, :zip, :baptism_date, :baptism_importance, :christian_story, :questions, :nationality, :religion, :need_ride, 
      :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay, :exact_length, :volunteer_id, :matched, :returned_home)

  end

end
end
