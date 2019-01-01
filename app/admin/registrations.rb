ActiveAdmin.register Registration do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name, :last_name, :gender, :email, :nationality, :religion, :birthdate, :phone, :streetname, :city, :zip, :need_ride, :has_spouse, :spouse_name, :english_level, :expectations, :length_of_stay, :exact_length #
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
