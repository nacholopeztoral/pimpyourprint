class Event < ApplicationRecord
  belongs_to :user
  has_many :users, :through => :attendances
end
