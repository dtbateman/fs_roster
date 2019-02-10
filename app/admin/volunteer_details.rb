ActiveAdmin.register VolunteerDetail do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id,:baptism_date, :baptism_importance, :christian_story, :questions, :participant_id

action_item :go_back, only: :show do
  link_to 'Back to Volunteer Details', admin_volunteer_details_path
end
	index do
	  selectable_column
	column :id
	column 'Name' do |m|
		m.participant.first_name + ' ' +m.participant.last_name
	end
	column :baptism_date
	column :baptism_importance
	column :christian_story
	column :questions
	column :created_at
	column :updated_at
	actions

	end


show do

    attributes_table do
      row :id
	row 'Name' do |m|
		m.participant.first_name + ' ' +m.participant.last_name
	end
	row :baptism_date
	row :baptism_importance
	row :christian_story
	row :questions
	row :created_at
	row :updated_at
	row 'Go Back' do
  link_to 'Volunteer Details', admin_volunteer_details_path
end
	
    end


    active_admin_comments
  end



  # or

#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
