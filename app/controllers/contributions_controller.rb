class ContributionsController < ApplicationController

  def index
    @contributions = Contribution.all
  end

  def show
  end

  def new
    @contribution = Contribution.new
  end

  def create
    @contribution = Contribution.create(contribution_parmas)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def top_page
  end
  
  private
  def contribution_parmas
    params.require(:contribution).permit(:title, :image, :text).merge(user_id: current_user.id)
  end

end
