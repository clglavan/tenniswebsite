class ApplicationController < ActionController::Base
   rescue_from ActionController::RoutingError, :with => :render_not_found
   rescue_from StandardError, :with => :render_server_error

   protected
     def render_not_found
        redirect_to root_path
     end

     def render_server_error
        redirect_to root_path
     end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
