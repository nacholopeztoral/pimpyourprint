class TipsController < ApplicationController
  def index
    @tips = Tips.all
    authorize @tips
  end

  def new
  @challenge_id = Tip.find(params[:challenge_id])
  @challenge_id = @challenges
  @tip = Tip.new
  authorize @tip
  end

  def create
  @challenge_id = Tip.find(params[:challenge_id])
  @challenge_id = @challenges
  @tip = Tip.new(tip_params)
   authorize @tip
   if @tip .save
    render 'index'
  else
    render 'new'
  end
  end

  private

  def tip_params
    params.require(:tip).permit(:content, :user_id, :challenge_id)
  end
end
