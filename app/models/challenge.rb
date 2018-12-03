class Challenge < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  has_many :tips
  has_many :user_challenges

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  # Add array of categories in the future
  validates :category, inclusion: { in: %w(plastic energy nutrition water waste transportation other) }
  validates :picture, presence: true

  scope :for_vegan, -> { where.not(category: 'nutrition')}
  scope :no_car, -> { where.not(category: 'transportation')}

  scope :not_taken_by, -> (user) { includes(:user_challenges).where(user_challenges: { user: user }).or(self.includes(:user_challenges).where.not(user_challenges: nil)) }
end
