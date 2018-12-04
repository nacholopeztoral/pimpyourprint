class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  validates :content, presence: true
  validates :content, length: { minimum: 5, maximum: 200 }
end
