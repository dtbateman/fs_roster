class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :groups, :participants, table_name: :matchups do |t|
      t.index [:group_id, :participant_id]
      t.index [:participant_id, :group_id]
    end
  end
end
