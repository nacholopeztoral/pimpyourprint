class User < ApplicationRecord
  mount_uploader :avatar, PhotoUploader
  has_many :user_challenges, dependent: :destroy
  has_many :challenges, through: :user_challenges
  has_many :tips, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :responses, dependent: :destroy
  has_many :transportations, dependent: :destroy
  has_many :attendances
  has_many :events, through: :attendances

  validates :time_zone, presence: true
  validates :username, uniqueness: true, presence: true
  validates :city, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  before_create :assign_url

  private

  def assign_url
   self.remote_avatar_url = 'https://c1.staticflickr.com/1/68/158034360_1cfd317f3e_b.jpg' if remote_avatar_url.nil?
  end
end
