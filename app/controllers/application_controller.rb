class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, 
    
if: :devise_controller?
    def configure_permitted_parameters  
     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:image_avatar, :email, :password, :password_confirmation, :remember_me, :current_password) 
    } 
    end
end
