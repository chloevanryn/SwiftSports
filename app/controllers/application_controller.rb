class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :photo])

  end

  # def after_sign_up_path_for(users)
  #   new_user_sport_path
  # end

  # def after_sign_in_path_for(users)
  #   root_path
  # end
end
