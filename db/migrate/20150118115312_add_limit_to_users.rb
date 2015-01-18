class AddLimitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :limit, :decimal, default: 1.00
  end
end
