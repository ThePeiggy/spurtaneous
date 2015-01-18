class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :venmo_token
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :location

      t.timestamps null: false
    end
  end
end
