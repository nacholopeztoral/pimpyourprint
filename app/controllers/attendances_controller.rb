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
      redirect_to events_path
    else
      render "events/new"
    end
  end
  def destroy
    @attendance = Attendance.find(params[:id])
    # @event = Event.find(params[:event_id])
    # @attendance.event = @event
    authorize @attendance
    if @attendance.destroy!
      redirect_to events_path
    end

  end
end
