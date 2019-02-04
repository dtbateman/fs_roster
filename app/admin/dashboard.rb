ActiveAdmin.register_page "Dashboard" do   
    content :title => proc{ I18n.t("active_admin.dashboard") } do 
     columns do
      column do
        panel "Recent Applicants" do
          table_for Participant.order("id asc").limit(10) do
            column("Name") { |participant| participant.first_name + ' ' +participant.last_name }
            column("Gender")   { |participant| participant.gender }
            column("E-mail") { |participant| participant.email }
            column("Phone") { |participant| participant.phone }
            column("Birthday") { |participant| participant.birthdate }
            column("Role") { |participant| participant.role }
            column ("Matched") do |m|
            if m.student_detail.present?
            m.student_detail.matched
            else
            status_tag "N/A"
            end
            end
                   
          end
        end

      end
       

    end   
end 

 end