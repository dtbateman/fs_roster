class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.date :birthdate
      t.string :phone
      t.string :streetname
      t.string :city
      t.string :state
      t.string :zip
      t.date :baptism_date
      t.text :baptism_importance
      t.text :christian_story
      t.text :questions

      t.timestamps
    end
  end
end
