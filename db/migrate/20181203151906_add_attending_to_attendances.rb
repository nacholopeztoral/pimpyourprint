class AddAttendingToAttendances < ActiveRecord::Migration[5.2]
  def change
    add_column :attendances, :attending, :boolean
  end
end
