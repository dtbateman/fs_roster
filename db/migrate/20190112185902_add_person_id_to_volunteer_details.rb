class AddPersonIdToVolunteerDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :volunteer_details, :person_id, foreign_key: true
  end
end
