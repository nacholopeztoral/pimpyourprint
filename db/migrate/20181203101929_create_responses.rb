class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
