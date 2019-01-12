class CreateStudentDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :student_details do |t|
      t.string :nationality
      t.string :religion
      t.boolean :need_ride
      t.string :english_level
      t.text :expectation
      t.string :length_of_stay
      t.boolean :matched
      t.string :volunteer_partner

      t.timestamps
    end
  end
end
