ActiveAdmin.register StudentDetail do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :nationality, :religion, :need_ride, :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay, :exact_length, :volunteer_id, :matched, :returned_home, :participant_id_id, :participant_id #

action_item :go_back, only: :show do
  link_to 'Back to Student Details', admin_student_details_path
end
	index do
	  selectable_column
	column :id
	column 'Name' do |m|
		m.participant.first_name + ' ' +m.participant.last_name
	end
	column :need_ride
	column :nationality
	column :religion
	column :english_level
	column :has_spouse
	column :spouse_name
	column :need_ride
	column :expectations
	column :matched
	column :volunteer_partner
	column :returned_home
	column :created_at
	column :updated_at
	actions

	end
#

show do
    attributes_table do
    row :id
	row 'Name' do |m|
		m.participant.first_name + ' ' +m.participant.last_name
	end
	row :need_ride
	row :nationality
	row :religion
	row :english_level
	row :has_spouse
	row :spouse_name
	row :need_ride
	row :expectations
	row :matched
	row :volunteer_partner
	row :returned_home
	row :created_at
	row :updated_at
	row 'Go Back' do
  link_to 'Student Details', admin_student_details_path
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
