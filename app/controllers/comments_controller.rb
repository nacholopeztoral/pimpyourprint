class CommentsController < ApplicationController
  def index
    @comments = policy_scope(Comment).where(event_id: params[:event_id] )
    authorize @comments
    end

  def show
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def new
    @comment = Comment.new
    @comment.user = current_user
    @comment.event = Event.find(params[:event_id])
    @event = @comment.event

    authorize @comment
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.event = Event.find(params[:event_id])
    @event = @comment.event
    @comment.save
    authorize @comment
  end

  private

  def comment_params
    params.require(:comment)
          .permit(
            :user_id,
            :event_id,
            :content
          )
  end
end
