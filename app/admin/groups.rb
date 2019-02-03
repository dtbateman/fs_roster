ActiveAdmin.register Group do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :description , participant_ids: []

  form do |f|		
    f.inputs 'Group Details' do
      f.input :description
      f.input :participant, as: :check_boxes, collection: Participant.pluck_all(:first_name, :last_name, :gender, :role, :id)
      f.submit
     end
  end


  index do
  selectable_column
column :id
column :participants do |m|
	if m.matchup.participant_id.present?
		            status_tag('YES!')

	else
		            status_tag('None')
end

end
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
