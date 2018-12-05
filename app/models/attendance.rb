class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

   validates :user, uniqueness: true
   validates :event, uniqueness: true
end
