ActiveAdmin.register_page "Dashboard" do
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Student Applicants" do
          table_for Registration.order("id desc").limit(5) do
            column :first_name do |post|
              link_to registration.first_name, [:admin, registration]
            end
            column :last_name do |post|
              link_to registration.last_name, [:admin, registration]
            end
            column :email do |post|
              link_to registration.email, [:admin, registration]
            end
            column :gender do |post|
              link_to registration.gender, [:admin, registration]
            end
          end
        
        end
      end
      column do
        panel "Recent Volunteer Applicants" do
          table_for Volunteer.order("id desc").limit(5) do
           column :first_name do |post|
              link_to volunteer.first_name, [:admin, volunteer]
            end
            column :last_name do |post|
              link_to volunteer.last_name, [:admin, volunteer]
            end
            column :email do |post|
              link_to volunteer.email, [:admin, volunteer]
            end
            column :gender do |post|
              link_to volunteer.gender, [:admin, volunteer]
            end
            
          end
        
        end
      end
    end
  end
end