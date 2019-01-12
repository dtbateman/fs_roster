class AddPersonIdToStudentDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :student_details, :person_id, foreign_key: true
  end
end
