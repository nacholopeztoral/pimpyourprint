class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :streak, :integer, default: 0
  end
end
