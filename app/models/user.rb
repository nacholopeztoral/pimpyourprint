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


  before_create :assign_url

  private

  def assign_url
   self.remote_avatar_url = 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fc1.staticflickr.com%2F1%2F68%2F158034360_1cfd317f3e_b.jpg&f=1' if avatar_url.nil?
  end
end
