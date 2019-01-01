ActiveAdmin.register_page "Dashboard" do   
    content :title => proc{ I18n.t("active_admin.dashboard") } do 
     columns do
      column do
        panel "Recent Student Applicants" do
          table_for Registration.order("id asc").limit(10) do
            column("Name") { |registration| registration.first_name + ' ' +registration.last_name }
            column("Gender")   { |registration| registration.gender }
            column("E-mail") { |registration| registration.email }
            column("Phone") { |registration| registration.phone }
            column("Birthday") { |registration| registration.birthdate }
            column("Ride needed?") { |registration| registration.need_ride }
            column("English Level") { |registration| registration.english_level }
            column("Expecations") { |registration| registration.expectations }
            column("Length of Stay") { |registration| registration.length_of_stay }
        


          end
        end
      end
       column do
        panel "Recent Volunteer Applicants" do
          table_for Volunteer.order("id asc").limit(10) do
            column("Name") { |volunteer| volunteer.first_name + ' ' +volunteer.last_name }
            column("Gender")   { |volunteer| volunteer.gender }
            column("E-mail") { |volunteer| volunteer.email }
            column("Phone") { |volunteer| volunteer.phone }
            column("Birthday") { |volunteer| volunteer.birthdate }
            column("Questions") { |volunteer| volunteer.questions }


          end
        end
      end

    end   
end 

 end