class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new
    @attendance.user = current_user
    @event = Event.find(params[:event_id])
    @attendance.event = @event
    @event.capacity =- 1
    @attendance.attending = true
    authorize @attendance
    if @attendance.save
      redirect_to event_path(@event)
    else
      render "events/new"
    end
  end
end
