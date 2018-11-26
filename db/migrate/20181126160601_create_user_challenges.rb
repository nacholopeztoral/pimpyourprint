class CreateUserChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :user_challenges do |t|
      t.references :challenge, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
