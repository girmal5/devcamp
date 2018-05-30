class ApplicationController < ActionController::Base


#run this method before you run anything else in the controller only if receiving some devise comm
before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])
end


end
