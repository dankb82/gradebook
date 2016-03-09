class AuthenticationController < ApplicationController
  def login
    if request.post?
      user = Teacher.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to teachers_path, notice: "You're logged in."
      else
        flash[:notice] = "Invalid email or password."
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to authentication_login_path, notice: "Thanks for stopping by."
  end
end
