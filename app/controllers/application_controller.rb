class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private def authenticate
    if session[:user_id].nil?
      redirect_to authentication_login_path, notice: "You have to login first."
      # add an unless session[with all the different ids] or do session[:user_id]
    end
  end
end
