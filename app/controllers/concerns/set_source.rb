module SetSource
extend ActiveSupport::Concern


    included do
      #run this method before you run anything else in the controller only if receiving some devise comm
      before_action :set_source
    end

    #set it only if params exists, coz we dont want to set it by default
      def set_source
        session[:source] = params[:q] if params[:q]
      end

    #after doing this we have access to q anywhere on the page



end
