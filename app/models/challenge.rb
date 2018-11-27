class Challenge < ApplicationRecord
  has_many :tips
  has_many :user_challenges

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  # Add array of categories in the future
  validates :category, inclusion: { in: %w(plastic energy nutrition other) }
  validates :picture, presence: true
end
