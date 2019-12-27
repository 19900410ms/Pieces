class SignupController < ApplicationController
  
  def signup_1
    @user = User.new
    @user.build_profile
  end

  def signup_2
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    @user = User.new
    @user.build_profile
  end

  def done
    sign_in User.find(session[:id]) unless user_signed_in?
  end

  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation]
    )
    @user.build_profile(profile_params)
    if @user.save
      session[:id] = @user.id
      redirect_to done_signup_index_path
    else
      render "/signup/signup_1"
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      profiles_attributes: [:id, :gender, :sports, :study_fields]
    )
  end

  def profile_params
    params.require(:user).require(:profiles).permit(:gender, :sports, :study_fields)
  end

end
