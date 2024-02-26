class ApplicationController < ActionController::Base

      before_action :authenticate_user!, except: [:top, :about]
      before_action :configure_permitted_parameters, if: :devise_controller? #名前登録できるようにするらしい？

      def after_sign_in_path_for(resources)
          user_path(current_user.id)
      end

        def after_sign_out_path_for(resources)
          root_path
        end

      protected

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
      end



  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end

end
