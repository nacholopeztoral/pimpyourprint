class UserChallenge < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  # A user cannot have twice the same challenge: Pair User-Challenge must be unique
  validates :challenge, uniqueness: { scope: :user }

  # Scopes are necessary for the UserChallenge generation
  # Scope for User_challenges that aren´t completed
  scope :not_completed, -> { where(completed: false) }
  # Scope for today's user_challenge
  scope :today, -> { where("created_at > ?", Time.zone.now.beginning_of_day).where("created_at < ?", Time.zone.now.end_of_day) }
end
