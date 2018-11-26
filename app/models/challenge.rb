class Challenge < ApplicationRecord
  has_many :tips
  has_many :user_challenges
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  # Add array of categories in the future
  validates :category, presence: true
  validates :picture, presence: true 
end
