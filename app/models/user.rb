class User < ApplicationRecord
  has_many :tips
  has_many :transportations
  has_many :user_challenges

  validates :usersame, uniqueness: true, presence: true
  validates :city, presence: true


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
