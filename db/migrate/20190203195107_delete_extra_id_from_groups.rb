class DeleteExtraIdFromGroups < ActiveRecord::Migration[5.0]
  def change
  	remove_column :groups, :participant_id
  end
end
