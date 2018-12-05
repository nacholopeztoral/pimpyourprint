class Event < ApplicationRecord
  belongs_to :user
  has_many :users, :through => :attendances
  has_many :comments, dependent: :destroy
  has_many :attendances
  include PgSearch
  pg_search_scope :search_by_city,
                  against: :city,
                  using: {
                    tsearch: { prefix: true }
                  }
end
