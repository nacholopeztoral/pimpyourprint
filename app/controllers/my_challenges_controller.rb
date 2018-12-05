class MyChallengesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :index

  def show
    @user = current_user
    @user.streak_created_at = Time.current.in_time_zone(@user.time_zone) if @user.streak_created_at.nil?
    @user.save

    # Gets a challenge out of a pool of challenges
    if @user.vegan == true
      @challenge = Challenge.for_vegan.not_taken_by(@user).where(active: true).sample
    elsif @user.car == false
      @challenge = Challenge.no_car.not_taken_by(@user).where(active: true).sample
    else
      @challenge = Challenge.not_taken_by(@user).where(active: true).sample
    end

    # If user has already generated a user_challenge for today, reassign it to @challenge
    # Check if user_challenges is nil
    unless @user.user_challenges.last.nil?
    # Check if latest user_challenge is from the present day based on timezone
      if @user.user_challenges.last.created_at.in_time_zone(@user.time_zone).to_date == Time.current.in_time_zone(@user.time_zone).to_date
        @user_challenge = @user.user_challenges.last
      end
    end

    # If user_challenge of today was found, reassign it to @challenge
    @challenge = @user_challenge.challenge if @user_challenge.present?

    @tips = policy_scope(Tip).order(created_at: :desc)
    @tip = Tip.new

    # If no challenge could be assigned, redirect to the dashboard
    redirect_to dashboard_path flash[:alert] = "You have fulfilled all the challenges! Feel free to suggest new ones." if @challenge.nil?

    skip_authorization
  end

  def index
    @challenges = current_user.challenges.where(user_challenges: {completed: true})
  end
end
