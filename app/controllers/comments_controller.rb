class CommentsController < ApplicationController

  def show
    @comment = Comment.new
    @comments = @contribution.comments.includes(:user).order("created_at DESC")
  end

  def create
    @comment = Comment.create(text: comment_params[:text], contribution_id: comment_params[:contribution_id], user_id: current_user.id)
    respond_to do |format|
      format.html { redirect_to contributions_path }
      format.json { render json: @comment }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, contribution_id: params[:contribution_id])
  end

end
