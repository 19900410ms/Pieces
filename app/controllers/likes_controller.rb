class LikesController < ApplicationController

  before_action :authenticate_user!
  before_action :find_contribution

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
    @likes = Like.where(contribution_id: params[:contribution_id])
    @contributions = Contribution.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, contribution_id: params[:contribution_id])
    like.destroy
    @likes = Like.where(contribution_id: params[:contribution_id])
    @contributions = Contribution.all
  end

  private
  def find_contribution
    @contribution = Contribution.find(params[:contribution_id])
  end

end
