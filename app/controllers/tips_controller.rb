class TipsController < ApplicationController
  def index
    @challenge = Challenge.find(params[:challenge_id])
    @challenge_user = UserChallenge.find(params[:user_challenge_id])
    @tips = policy_scope(Tip).order(created_at: :desc)
    @tip = Tip.new
    authorize @tips
  end

  def new
  @challenge = Challenge.find(params[:challenge_id])
  @tip = Tip.new
  authorize @tip
  end

  def create
  @challenge = Challenge.find(params[:challenge_id])
  @challenge_user = UserChallenge.find(params[:user_challenge_id])
  @tip = Tip.new(tip_params)
  @tip.challenge = @challenge
  @tip.user = current_user
   authorize @tip
  #  if @tip.save
  #   render 'index'
  # else
  #   render 'new'
  # end
  end

  private

  def tip_params
    params.require(:tip).permit(:content, :user_challenge_id, :challenge_id)
  end
end
