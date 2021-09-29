class MainController < ApplicationController
  def main
  end

  def login
    @user = User.find_by(email: params[:email], pass: params[:pass])
    if !(@user.nil?)
      redirect_to @user, notice: "Successfully login."
    else
      redirect_to '/main', alert: "Wrong username or password."
    end
  end

end
