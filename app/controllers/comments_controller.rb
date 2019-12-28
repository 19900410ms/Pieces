class CommentsController < ApplicationController

  before_action :authenticate_user!

  def show
    @comment = Comment.new
    @comments = @contribution.comments.includes(:user)
  end

  def create
    #binding.pry
    @comment = Comment.create(comment_params)
    respond_to do |format|
      #format.html { redirect_to contributions_path }
      format.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, contribution_id: params[:contribution_id])
  end

end
