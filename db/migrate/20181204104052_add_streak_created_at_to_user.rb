class AddStreakCreatedAtToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :streak_created_at, :datetime
  end
end
