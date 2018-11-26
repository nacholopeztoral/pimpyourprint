class CreateTransportations < ActiveRecord::Migration[5.2]
  def change
    create_table :transportations do |t|
      t.references :user, foreign_key: true
      t.integer :carbon

      t.timestamps
    end
  end
end
