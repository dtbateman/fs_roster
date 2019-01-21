class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :group_description
      t.string :number_of_participants
      t.string :participant_id

      t.timestamps
    end
    add_index :assignments, :participant_id
  end
end
