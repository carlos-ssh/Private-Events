class ApplicationController < ActionController::Base
    
    private
    
    def require_login
        redirect_to login_path
    end
    
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
end
