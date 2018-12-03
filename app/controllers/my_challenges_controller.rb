class MyChallengesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :index

  def show
    # Radomly pick a Challenge out of the pool that the user hasn't done yet
    @challenge = Challenge.not_taken_by(current_user).where(active: true).sample
    # To prevent the generation of a new challenge everytime the user goes to "my_challenge",
    # If current_user already has generated a user_challenge for today, reassign it to @challenge
    @user_challenge = current_user.user_challenges.today.last
    @challenge = @user_challenge.challenge if @user_challenge.present?

    redirect_to dashboard_path flash[:alert] = "Unfortunately, we don't have anymore available challenges for you! How about you suggest a new one? #{view_context.link_to('Suggest new challenge', new_challenge_path)}".html_safe if @challenge.nil?

    authorize @challenge, policy_class: ChallengePolicy
  end

  def index
    @challenges = current_user.challenges.where(user_challenges: {completed: true})
  end
end
