class ContributionsController < ApplicationController
  
  #before_action :authenticate_user!, except: [:index, :show, :top_page, :search]
  before_action :set_contribution, only: [:show, :edit, :destroy]
  
  def index
    @contributions = Contribution.all.order("created_at DESC").page(params[:page]).per(10)
  end

  def show
  end

  def new
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.create(contribution_parmas)
    @contribution.likes_count = 0
    redirect_to contributions_path
  end

  def edit
  end

  def update
    contribution = Contribution.find(params[:id])
    if contribution.user.id == current_user.id
      contribution.update(contribution_parmas)
    end
    redirect_to contribution_path(id: contribution.id)
  end

  def destroy
    if @contribution.user.id == current_user.id
      @contribution.destroy
    end
    redirect_to contributions_path
  end

  def top_page
    #if user_signed_in?
    #  redirect_to contributions_path
    #end
  end

  def search
    @q = Contribution.ransack(params[:q])
    @result_contributions = @q.result.order("created_at DESC").page(params[:page]).per(10)
  end
  
  private
  def contribution_parmas
    params.require(:contribution).permit(:title, :image, :text, :likes_count, :genre_id, :public_id).merge(user_id: current_user.id)
  end

  def set_contribution
    @contribution = Contribution.find(params[:id])
  end

end