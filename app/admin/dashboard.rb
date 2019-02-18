ActiveAdmin.register_page "Dashboard" do   
    content :title => proc{ I18n.t("active_admin.dashboard") } do 
     columns do
      column do
        panel "Recent Applicants" do
        table_for Participant.order("created_at desc").limit(10) do
            column("Name") { |participant| participant.first_name + ' ' +participant.last_name }
            column("Gender")   { |participant| participant.gender }
            column("E-mail") { |participant| participant.email }
            column("Phone") { |participant| participant.phone }
            column("Birthday") { |participant| participant.birthdate }
            column("Role") { |participant| participant.role }
            column("Details") do |m|
            if m.student_detail.present?
            @studentdetail= m.student_detail.id
            link_to "Reader Details", admin_student_detail_path(@studentdetail)
            elsif m.volunteer_detail.present?
            @volunteerdetail= m.volunteer_detail.id
            link_to "Volunteer Details", admin_volunteer_detail_path(@volunteerdetail)
            else
            status_tag('Error')
            end
            end
            column ("Matched") do |m|
            if m.student_detail.present?
            m.student_detail.matched
            else
            status_tag "N/A"
            end
            end
            column ("Application Date") { |participant| participant.created_at }
            end
            end

            end


    end   
end 

 end