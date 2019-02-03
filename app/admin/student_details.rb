ActiveAdmin.register StudentDetail do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :nationality, :religion, :need_ride, :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay, :exact_length, :volunteer_id, :matched, :returned_home, :participant_id_id, :participant_id #


	index do
	  selectable_column
	column :id
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
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
