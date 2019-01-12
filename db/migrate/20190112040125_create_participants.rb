class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :email
      t.string :phone
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zip
      t.string :role

      t.timestamps
    end
  end
end
