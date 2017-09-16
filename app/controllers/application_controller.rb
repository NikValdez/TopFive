class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

	def configure_permitted_parameters
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :birthday, :email, :password, :remember_me, :twitter, :twitter2, :twitter3, :facebook, :facebook2, :facebook3, :instagram, :instagram2, :instagram3])
	    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
	    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :username, :birthday, :update, :current_user, :email, :password, :remember_me, :twitter, :twitter2, :twitter3, :facebook, :facebook2, :facebook3, :instagram, :instagram2, :instagram3])
	 end

	 def after_sign_in_path_for(resource)
	 current_user
	end

end
