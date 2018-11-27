class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :score, :integer, default: 0
    add_column :users, :city, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :streak, :integer
    add_column :users, :avatar, :string
  end
end
