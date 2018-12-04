class Challenge < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  has_many :tips
  has_many :user_challenges

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, inclusion: { in: %w(plastic energy nutrition water waste transportation other) }

  scope :for_vegan, -> { where.not(category: 'nutrition')}
  scope :no_car, -> { where.not(category: 'transportation')}

  scope :not_taken_by, -> (user) { includes(:user_challenges).where(user_challenges: { user: user }).or(self.includes(:user_challenges).where.not(user_challenges: nil)) }

  def taken_by?(a_user)
    user_challenges.where(user: a_user).any?
  end
end
