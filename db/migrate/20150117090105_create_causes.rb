class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.float :unit_donation
      t.integer :hits, default: 0

      t.timestamps null: false
    end
  end
end
