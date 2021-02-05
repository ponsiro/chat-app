class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :devise_params_set, if: :devise_controller?


  private
  def devise_params_set
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
