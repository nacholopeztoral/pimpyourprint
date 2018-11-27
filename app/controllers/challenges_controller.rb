class ChallengesController < ApplicationController
  def index
    # Index only available for Admins
    # Only take into account Challenges that are active and part of the scope
    @challenges = policy_scope(Challenge).order(created_at: :desc).where(:active == true)
    authorize @challenges
  end

  def show
    # Show available for the Users
    @challenge = Challenge.find(params[:id])
    authorize @challenge
  end

  def new
    @challenge = Challenge.new
    authorize @challenge
  end

  def create
    @challenge = Challenge.new(challenge_params)
    authorize @challenge
    if @challenge.save!
      redirect_to @challenge
    else
      render 'new'
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
    authorize @challenge
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update(challenge_params)
    authorize @challenge
    if @challenge.save
      redirect_to @challenge
    else
      render 'edit'
    end
  end

  private

  def challenge_params
    params.require(:challenge)
          .permit(
            :title,
            :description,
            :carbon,
            :category,
            :picture
          )
  end
end
