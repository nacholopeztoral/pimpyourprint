class AttendancesController < ApplicationController


  def create
    @attendance = Attendance.new
    @attendance.user = current_user
    @event = Event.find(params[:event_id])
    @attendance.event = @event
    authorize @attendance
    if @attendance.save
      redirect_to event_path(@event)
    else
      render "events/new"
    end
  end
end
