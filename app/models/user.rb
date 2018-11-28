class User < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  has_many :user_challenges, dependent: :destroy
  has_many :tips, dependent: :destroy
  has_many :transportations, dependent: :destroy
  validates :username, uniqueness: true, presence: true
  validates :city, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
