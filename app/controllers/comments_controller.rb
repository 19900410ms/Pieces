class CommentsController < ApplicationController

  def show
    @comment = Comment.new
    @comments = @contribution.comments.includes(:user).order("created_at DESC")
  end

  def create
    Comment.create(comment_params)
    redirect_to contributions_path
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, contribution_id: params[:contribution_id])
  end

end
