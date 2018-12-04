class DashboardsController < ApplicationController
  def show
    @user = current_user
    calculate_streak
    calculate_score
    authorize @user
  end

  private

  def calculate_streak
    @user = current_user
    current_challenge = @user.user_challenges.last
    if current_challenge
      challenge_time = current_challenge.created_at.to_time
      # result of division is given back in seconds
      time_elapsed = (Time.current - challenge_time) / 3600

      if (new_day? && !current_challenge.completed?) || time_elapsed > 24
        @user.streak = 0
        @user.streak_created_at = Time.current.in_time_zone(@user.time_zone)
      elsif current_challenge.completed? && !new_day?
        @user.streak = Time.current.in_time_zone(@user.time_zone).to_date + 1 - @user.streak_created_at.to_date
        @user.highest_streak = @user.streak if @user.streak > @user.highest_streak
      elsif current_challenge.completed? && new_day?
        @user.streak = Time.current.in_time_zone(@user.time_zone).to_date - @user.streak_created_at.to_date
        @user.highest_streak = @user.streak if @user.streak > @user.highest_streak
      end
    else
      @user.streak = 0
      @user.streak_created_at = Time.current.in_time_zone(@user.time_zone)
    end
    @user.save
    authorize @user
  end

  def calculate_score
    @user = current_user
    carbon_from_transport = 0.00
    if @user.transportations
      @user.transportations.each do |t|
        carbon_from_transport += t.carbon / 1000.00
      end
    end
    @user.score = 0 if @user.score.nil?
    if @user.user_challenges
      @user.score = @user.user_challenges.count(&:completed) * 15 +
                    2 * @user.highest_streak - carbon_from_transport / 500
    end
    @user.score = 0 if @user.score < 0
    @user.save
    authorize @user
  end

  def new_day?
    @user = current_user
    current_challenge = @user.user_challenges.last
    challenge_time = current_challenge.created_at.to_time
    if Time.current.in_time_zone(@user.time_zone).to_date == challenge_time.to_date + 1
      return true
    end
  end
end
