class AddActiveToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :active, :boolean, default: :true
  end
end
