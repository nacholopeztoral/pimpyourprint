class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :address
      t.integer :capacity
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
