class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :neighborhood])
  end
  def after_sign_in_path_for(resource)
 	 session[:id] = current_user.id
  	 user_path(resource)
  end
end
