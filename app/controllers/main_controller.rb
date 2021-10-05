class MainController < ApplicationController
  def main
    session[:user_id] = nil
  end

  def login
    @user = User.find_by(email: params[:email])
    @password = params[:password]
    if (@user && @user.authenticate(@password))
      redirect_to @user, notice: "Successfully login."
      session[:user_id] = @user.id
    else
      redirect_to '/main', alert: "Wrong username or password."
    end
  end

end
