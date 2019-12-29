class UsersController < ApplicationController

  before_action :authenticate_user!, except: [:show]

  def show
    @user = User.find(params[:id])
    @contributions = @user.contributions.all.order("created_at DESC")
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    profile = user.profile
    profile.update(profile_params)
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email)
  end

  def profile_params
    params.require(:user).require(:profiles).permit(:gender, :sports, :study_fields)
  end

end
