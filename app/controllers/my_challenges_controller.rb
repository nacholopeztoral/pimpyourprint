class MyChallengesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :index

  def show
    # Radomly pick a Challenge out of the pool that the user hasn"t done yet
     if current_user.vegan == true
      @challenge = Challenge.for_vegan.not_taken_by(current_user).sample
     elsif current_user.car == false
      @challenge = Challenge.no_car.not_taken_by(current_user).sample
     end
    # @challenge = Challenge.not_taken_by(current_user).sample
    # To prevent the generation of a new challenge everytime the user goes to "my_challenge",
    # If current_user already has generated a user_challenge for today, reassign it to @challenge
    @user_challenge = current_user.user_challenges.today.last
    @challenge = @user_challenge.challenge if @user_challenge.present?

    authorize @challenge
  end

  def index
    @challenges = current_user.challenges.where(user_challenges: {completed: true})
  end
end
