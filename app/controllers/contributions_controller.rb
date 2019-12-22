class ContributionsController < ApplicationController

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
    redirect_to contributions_path
  end

  def edit
  end

  def update
    contribution = Contribution.find(params[:id])
    contribution.update(contribution_parmas)
    redirect_to contributions_path
  end

  def destroy
  end

  def top_page
    if user_signed_in?
      redirect_to contributions_path
    end
  end
  
  private
  def contribution_parmas
    params.require(:contribution).permit(:title, :image, :text).merge(user_id: current_user.id)
  end

  def set_contribution
    @contribution = Contribution.find(params[:id])
  end

end
