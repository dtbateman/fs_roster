class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
	  t.string :username
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.timestamp :confirmed_at

      t.timestamps
    end
  end
end
