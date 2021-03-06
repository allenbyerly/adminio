class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :encrypted_password
      t.string :password_token
      t.string :age
      t.string :zipcode
      t.text :properties_data

      # Invitation system
      t.integer :invitation_id

      t.timestamps

      t.datetime :deleted_at
      t.index :deleted_at
    end
  end
end

