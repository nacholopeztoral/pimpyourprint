class DashboardsController < ApplicationController
  def show
    @user = current_user
    calculate_streak
    authorize @user
  end

  def calculate_streak
    @user = current_user
    current_challenge = @user.user_challenges.last
    challenge_time = current_challenge.created_at.to_time
    # result of division is given back in seconds
    time_elapsed = (Time.current - challenge_time) / 3600
    @new_day = true if new_day?

    if (@new_day && !current_challenge.completed?) || time_elapsed > 48
      @user.streak = 0
    elsif current_challenge.completed? && @new_day
      @user.streak += 1
      @new_day = false # prevents streak increasing every time page is reloaded
    end
    @user.save
    authorize @user
  end

  def new_day?
    @user = current_user
    current_challenge = @user.user_challenges.last
    challenge_time = current_challenge.created_at.to_time
    if Date.current.in_time_zone(@user.time_zone).to_date == challenge_time.to_date + 1
      return true
    end
  end
end
