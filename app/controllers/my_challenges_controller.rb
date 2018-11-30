class MyChallengesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :index

  def show
    # Radomly pick a Challenge out of the pool that the user hasn"t done yet
    @challenge = Challenge.not_taken_by(current_user).sample
    # To prevent the generation of a new challenge everytime the user goes to "my_challenge",
    # If current_user already has generated a user_challenge for today, reassign it to @challenge
    user_challenge = current_user.user_challenges.not_completed.today.last
    @challenge = user_challenge.challenge if user_challenge.present?
    authorize @challenge
  end

  def index
    # SQL way
    # @challenges = current_user.challenges.where('"user_challenges"."completed" = ?', true)
    # ActiveRecord way
    @challenges = current_user.challenges.where(user_challenges: {completed: true})
  end
end
