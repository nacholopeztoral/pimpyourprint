class UserChallenge < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  validates :completed, presence: true 
end
