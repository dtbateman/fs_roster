ActiveAdmin.register Participant do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :first_name, :last_name, :gender, :email, :birthdate, :phone, 
                  :street_name, :city, :state, :zip, :role, student_details_attributes: [:nationality, :religion, :need_ride, 
                :has_spouse, :spouse_name, :english_level, :expectation, :length_of_stay, :exact_length, :volunteer_id, 
                :matched, :returned_home, :participant_id], volunteer_details_attributes: [:baptism_date, :baptism_importance, :christian_story, :questions, :participant_id]


show do |participant|
  attributes_table do
    row :id
    row :full_name
    # attributes_table_for participant.volunteer_detail do
    #   row :id
    #   row :volunteer_name
      
    # end
  end
end
# or
# #
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
