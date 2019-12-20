class ApplicationController < ActionController::Base
  before_action :congigure_permitted_parameters, if: :devise_controller?

  def congigure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, key: [:nickname])
  end
end
