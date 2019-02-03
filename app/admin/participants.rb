ActiveAdmin.register Participant do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :first_name, :gender, :email, :birthdate, :phone, 
                  :street_name, :city, :state, :zip, :role, group_attributes: [:description], student_details_attributes: [:nationality, :religion, :need_ride, 
                :has_spouse, :spouse_name, :english_level, :expectation, :length_of_stay, :exact_length, :volunteer_id, 
                :matched, :returned_home, :participant_id], volunteer_details_attributes: [:baptism_date, :baptism_importance, :christian_story, :questions, :participant_id]

index do
  selectable_column
column :id
column :first_name
column :last_name
column :gender
column :email
column :birthdate
column :phone
column :street_name
column :city	
column :state
column :zip
column :role
column :details do |m|
        if m.student_detail.present?
link_to "Details", controller: "admin/student_details", id: m.student_detail.id 
		elsif m.volunteer_detail.present?
link_to "Details", controller: "admin/volunteer_details", id: m.volunteer_detail.id 
        else
            status_tag('Error')
        end
    
end
column :group do |m|
        if m.group.present?
            link_to m.group.description
        else
            status_tag('None')
        end
    end
column :created_at
column :updated_at
actions

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
