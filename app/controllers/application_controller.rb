class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller? #名前登録できるようにするらしい？

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end



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
