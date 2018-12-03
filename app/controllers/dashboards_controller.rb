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
    new_day = true

    if (midnight? && !current_challenge.completed?) || time_elapsed > 48
      @user.streak = 0
    elsif time_elapsed < 24 && current_challenge.completed? && new_day
      @user.streak += 1
      midnight? ? new_day = true : new_day = false # prevents streak increasing every time page is reloaded
    end
    @user.save
    authorize @user
  end

  def midnight?
    Time.current.hour == 23 && Time.current.min == 59 && Time.current.sec == 59
  end
end
