class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.references :user, foreign_key: true
      t.references :challenge, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
