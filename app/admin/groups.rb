ActiveAdmin.register Group do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :description , participant_ids: []

action_item :go_back, only: :show do
  link_to 'Back to Groups', admin_groups_path
end

  form do |f|		
    f.inputs 'Group Details' do
      f.input :description
      f.input :participants, as: :check_boxes, collection: Participant.select(:id, :first_name, :last_name, :gender, :role).all.map{|u| [u.admin_att, u.id] }
      f.submit
     end
  end


  index do
  selectable_column
	column :id
	column :description
	column :members do |m|
		if m.participants.present?
			m.participants.map{|f| "#{f.first_name} #{f.last_name}, #{f.role} "}
		else
			status_tag "None"
	end
end
actions

end

show do
    attributes_table do
      row :id
      row :description
  row 'Members' do |m|
    if m.participants.present?
      m.participants.map{|f| "#{f.first_name} #{f.last_name}, #{f.role} "}
    else
      status_tag "None"
  end
end

  row :created_at
  row :updated_at
  row 'Go Back' do
  link_to 'Groups', admin_groups_path(@group)
end
  
    end


    active_admin_comments
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
