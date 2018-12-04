class MyChallengesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :index

  def show
    # Gets a challenge out of a pool of challenges
    @challenge = Challenge.not_taken_by(current_user).where(active: true).sample
    # if current_user.vegan == true
    #   @challenge = Challenge.for_vegan.not_taken_by(current_user).where(active: true).sample
    # elsif current_user.car == false
    #   @challenge = Challenge.no_car.not_taken_by(current_user).where(active: true).sample
    # else
    # @challenge = Challenge.not_taken_by(current_user).where(active: true).sample
    # end

    unless current_user.user_challenges.last.nil?
      if current_user.user_challenges.last.created_at.in_time_zone(current_user.time_zone).to_date == Time.current.in_time_zone(current_user.time_zone).to_date
        @user_challenge = current_user.user_challenges.last
      end
    end
    # To prevent the generation of a new challenge everytime the user goes to "my_challenge",
    # If current_user already has generated a user_challenge for today, reassign it to @challenge
    @user_challenge = current_user.user_challenges.today.last
    @challenge = @user_challenge.challenge if @user_challenge.present?
    @tips = policy_scope(Tip).order(created_at: :desc)
    @tip = Tip.new
    redirect_to dashboard_path flash[:alert] = "You have fulfilled all the challenges! Feel free to suggest new ones." if @challenge.nil?
    #  authorize @challenge, policy_class: ChallengePolicy
    skip_authorization

    # Radomly pick a Challenge out of the pool that the user hasn't done yet
    @challenge = Challenge.not_taken_by(current_user).where(active: true).sample
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
