class CreateVolunteerDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteer_details do |t|
      t.text :baptism_date
      t.text :baptism_importance
      t.text :christian_story
      t.text :questions

      t.timestamps
    end
  end
end
