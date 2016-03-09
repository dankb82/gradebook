class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate
    if session[:user_id].nil?
      redirect_to authentication_login_path, notice: "You have to login first." unless session[:user_id]
    end
  end

  def authenticated_as_teacher?
    redirect_to :back, notice: "You do not have permission to access that page." unless session[:user_type] == "Teacher"
  end
end
