class AddMatchedToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :matched, :boolean
  end
end
