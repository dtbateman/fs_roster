class StudentDetailsController < ApplicationController
  def new
        @student= Student_Details.new

  end

  def create
    @student = Student_Details.create(student_detail_params)
    @student.save
    if @student.save
            flash[:success] = "Successfully Registered!"        

            #email notifes admin of new registration
        NotifyMailer.notify_email(@student).deliver_later

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
    def student_detail_params
      params.require(:student_detail).permit(:first_name, :last_name, :gender, :email, :birthdate, :phone, :street_name, :city, :state, :zip, :baptism_date, :baptism_importance, :christian_story, :questions, :nationality, :religion, :need_ride, 
        :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay, :exact_length, :volunteer_id, :matched, :returned_home, :participant_id, :participant_id_id)

    end
end
