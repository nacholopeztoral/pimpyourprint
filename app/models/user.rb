class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_challenges
  has_many :tips
  has_many :transportations
  validates :username, uniqueness: true, presence: true
  validates :city, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
