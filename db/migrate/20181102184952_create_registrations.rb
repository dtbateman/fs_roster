class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :nationality
      t.string :religion
      t.date :birthdate
      t.string :phone
      t.string :streetname
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :need_ride
      t.string :has_spouse
      t.string :spouse_name
      t.string :english_level
      t.text :expectations
      t.string :length_of_stay
      t.text :exact_length

      t.timestamps
    end
  end
end
