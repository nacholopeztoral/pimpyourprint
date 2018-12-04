class AddHighestStreakToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :highest_streak, :integer, default: 0
  end
end
