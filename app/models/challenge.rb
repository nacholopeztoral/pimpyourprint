class Challenge < ApplicationRecord
  has_many :tips
  has_many :user_challenges

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  # Add array of categories in the future
  validates :category, inclusion: { in: %w(plastic energy nutrition water waste other) }
  validates :picture, presence: true

  scope :not_taken_by, -> (user) { includes(:user_challenges).where(user_challenges: { user: user }).or(self.includes(:user_challenges).where.not(user_challenges: nil)) }

  # def activate
  #   @challenge = Challenge.find(params[:id])
  #   @challenge.active = true
  # end

  # def deactivate
  #   @challenge = Challenge.find(params[:id])
  #   @challenge.active = false
  # end
end
