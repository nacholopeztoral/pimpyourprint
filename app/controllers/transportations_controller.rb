class TransportationsController < ApplicationController
  def new
    @transportation = Transportation.new
    authorize @transportation
  end

  def create
    @transportation = Transportation.new(transportation_params)
    @transportation.user_id = current_user.id
    authorize @transportation
    if @transportation.save!
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def transportation_params
    params.require(:transportation).permit(:carbon)
  end
end
