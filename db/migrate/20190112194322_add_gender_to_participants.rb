class AddGenderToParticipants < ActiveRecord::Migration[5.0]
  def change
    add_column :participants, :gender, :string
  end
end
