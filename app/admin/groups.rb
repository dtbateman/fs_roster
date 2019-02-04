ActiveAdmin.register Group do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :description , participant_ids: []

  form do |f|		
    f.inputs 'Group Details' do
      f.input :description
      f.input :participants, as: :check_boxes, collection: Participant.select(:id, :first_name, :last_name).all.map{|u| [u.full_name, u.id] }
      f.submit
     end
  end


  index do
  selectable_column
	column :id
	column :description
	column :members do |m|
		if m.participants.present?
			m.participants.map{|f| "#{f.first_name} #{f.last_name}"}
		else
			status_tag "None"
	end
end

# column :participants do |m|
# 	if m.matchup.participant_id.present?
# 		            status_tag('YES!')

# 	else
# 		            status_tag('None')
# end

# end
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
