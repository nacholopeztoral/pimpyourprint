class Challenge < ApplicationRecord
  has_many :tips
  has_many :user_challenges
  
end
