class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :nationality
      t.string :religion
      t.date :birthdate
      t.string :phone
      t.string :street
      t.string :city
      t.string :postal_code
      t.boolean :has_transportation
      t.string :marital_status
      t.string :spouse_name
      t.string :english_fluency
      t.text :expectations
      t.string :anticipated_residency_duration

      t.timestamps
    end
  end
end
