class AuthenticationController < ApplicationController
  def login
    if request.post?
      user = Teacher.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        redirect_to teachers_path, notice: "You're logged in."
      else
        flash[:notice] = "Invalid email or password."
      end
    end
  end

  def logout
  end
end
