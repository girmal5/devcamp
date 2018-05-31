class ApplicationController < ActionController::Base

  include DeviseWhitelist



  before_action :set_source

#set it only if params exists, coz we dont want to set it by default
  def set_source
    session[:source] = params[:q] if params[:q]
  end

#after doing this we have access to q anywhere on the page 

end
