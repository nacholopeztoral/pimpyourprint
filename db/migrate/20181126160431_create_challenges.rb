class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :category
      t.text :description
      t.integer :carbon, default: 0
      t.string :picture

      t.timestamps
    end
  end
end
