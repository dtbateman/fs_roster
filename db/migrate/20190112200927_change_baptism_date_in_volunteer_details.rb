class ChangeBaptismDateInVolunteerDetails < ActiveRecord::Migration[5.0]
def change 
reversible do |change|
change.up { change_column :volunteer_details, :baptism_date, :date }
change.down { change_column :volunteer_details, :baptism_date, :string }
end
end
end