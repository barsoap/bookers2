class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resources)
    user_path(current_user.id)
  end

  def after_sign_out_path_for(resources)
    root_path
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end

end
