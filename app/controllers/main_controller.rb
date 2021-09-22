class MainController < ApplicationController
	def main

	end

	def login
		@user = User.find_by(email: params[:email], pass: params[:pass])
		respond_to do |format|
	      if !(@user.nil?)
	        format.html { redirect_to @user, notice: "Successfully login." }
	      else
	        format.html { redirect_to "/main", alert: "Wrong username or password." }
	      end
	    end
	end

end
