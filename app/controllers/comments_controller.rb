class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.create(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to ticket_path(@ticket)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end