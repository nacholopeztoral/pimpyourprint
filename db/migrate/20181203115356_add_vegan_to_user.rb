class AddVeganToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :vegan, :boolean, default: false
    add_column :users, :car, :boolean, default: false
  end
end
