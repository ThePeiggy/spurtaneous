class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.integer :user_id
      t.string :name, null: false
      t.text :description, null: false
      t.text :image
      t.string :location
      t.float :unit_donation, null:false
      t.integer :hits, default: 0

      t.timestamps null: false
    end
  end
end
