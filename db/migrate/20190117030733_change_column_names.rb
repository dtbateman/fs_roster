class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
  	rename_column :student_details, :person_id_id, :participant_id
  	rename_column :volunteer_details, :person_id_id, :participant_id

  end
end
