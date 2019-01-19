class AddReturnedHomeToStudentDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :student_details, :returned_home, :boolean
  end
end
