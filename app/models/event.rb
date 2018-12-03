class Event < ApplicationRecord
  belongs_to :user
  has_many :users, :through => :attendances
  has_many :comments, dependent: :destroy
end
