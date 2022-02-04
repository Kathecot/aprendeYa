class ApplicationController < ActionController::Base
  before_action :authenticate_user! ## esta accion indica que user debe estar logueado puede estar en cualquier controller
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end
end
