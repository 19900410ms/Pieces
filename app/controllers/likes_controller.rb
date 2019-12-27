class LikesController < ApplicationController

  def show
    @like = Like.new
    @likes = @like.contribution.includes(:user)
  end

  def create
    #binding.pry
    @like = Like.create(like_params)
    respond_to do |format|
      #format.html { redirect_to contributions_path }
      format.json
    end
  end

  private
  def like_params
    params.require(:like).merge(user_id: current_user.id, contribution_id: params[:contribution_id])
  end

end
