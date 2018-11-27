class Challenge < ApplicationRecord
  has_many :tips
  has_many :user_challenges

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  # Add array of categories in the future
  validates :category, presence: true
  validates :picture, presence: true

  def index
  end

  def show
  end

  def new
    @challenge = Challenge.new
    # + link to new form
  end

  def create
    @challenge = Challenge.find(params[:id])
    authorize @challenge
  end

  def edit
    @challenge = Challenge.find(params[:id])
    # + link to edit form
    authorize @challenge
  end

  def update
    @challenge = Challenge.find(params[:id])
    # ///
    authorize @challenge
  end
end
