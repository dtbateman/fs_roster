class AddSpouseInfoToStudentDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :student_details, :has_spouse, :string
    add_column :student_details, :spouse_name, :string
    add_column :student_details, :exact_length, :text
  end
end
