class AddReturnedHomeToRegistration < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :returned_home, :boolean
  end
end
