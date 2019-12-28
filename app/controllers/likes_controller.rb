class LikesController < ApplicationController

  def index
    @likes = @like.contribution.includes(:user)
  end

  def show
    @like = Like.new
    @likes = @like.contribution.includes(:user)
  end

  def create
    #binding.pry
    @like = Like.create(user_id: current_user.id, contribution_id: params[:contribution_id])
    respond_to do |format|
      format.html { redirect_to contributions_path }
      format.json
    end
  end

  def destroy
    like = current_user.likes.find_by(user_id: current_user.id)
    like.destroy
  end

end
