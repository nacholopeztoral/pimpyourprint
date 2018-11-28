class UserChallengesController < ApplicationController
  def create
    # Find the challenge that has been randomly picked in my_challenge#show
    @challenge = Challenge.find(params[:challenge_id])
    # Create a User_challenge with the picked challenge and the current user
    @user_challenge = UserChallenge.new(challenge: @challenge, user: current_user)
    authorize @user_challenge

    if @user_challenge.save
      redirect_to my_challenge_path
    else
      # In which case could the user_challenge not be saved and if it happens,
      # What do we do?
    end
  end
end
