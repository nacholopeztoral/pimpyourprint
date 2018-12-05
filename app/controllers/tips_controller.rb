class TipsController < ApplicationController
  def index
    @challenge = Challenge.find(params[:challenge_id])
    @tips = policy_scope(Tip).order(created_at: :desc)
    @tip = Tip.new
    authorize @challenge, :show?
  end

  def new
  @challenge = Challenge.find(params[:challenge_id])
  @tip = Tip.new
  authorize @tip
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @tip = Tip.new(tip_params)
    @tip.challenge = @challenge
    @tip.user = current_user
    authorize @tip
    if @tip.save
      redirect_to dashboard_path
    else
      @tips = policy_scope(Tip).order(created_at: :desc)
      redirect_to my_challenge_path
    end
  end

  private

  def tip_params
    params.require(:tip).permit(:content, :challenge_id)
  end
end
