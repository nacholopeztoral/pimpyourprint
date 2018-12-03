class User < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  has_many :user_challenges, dependent: :destroy
  has_many :challenges, through: :user_challenges
  has_many :tips, dependent: :destroy
  has_many :transportations, dependent: :destroy

  validates :username, uniqueness: true, presence: true
  validates :city, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  before_create :assign_url

  private

  def assign_url
   self.remote_avatar_tag = '../assets/images/giraffe.jpng' if avatar_url.nil?
  end
end
