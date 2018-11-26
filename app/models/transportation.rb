class Transportation < ApplicationRecord
  belongs_to :user
  validates :carbon, presence: true 
end
