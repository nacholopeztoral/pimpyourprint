class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
    if params[:query].present?
      @events = Event.search_by_city(params[:query])
    else
      @events = Event.all
    end
    authorize @events
  end

  def show
    @event = Event.find(params[:id])
    @attendance = Attendance.new
    authorize @event
  end

  def new
    @event = Event.new
    @event.user = current_user
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.date = Time.zone.parse(event_params[:date])
    @event.date_end = Time.zone.parse(event_params[:date_end])
    @event.user = current_user
    authorize @event
    if @event.save!
      redirect_to events_path
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :user_id,
      :title,
      :description,
      :address,
      :capacity,
      :city,
      :date,
      :date_end
      )
  end
end
