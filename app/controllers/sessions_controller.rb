class SessionsController < ApplicationController
	def new
	end
	def create
		user=Registration.find_by(email:params[:email])
		if user.present? && user.authenticate(params[:password])
			session[:id]=user.id
			redirect_to root_path,notice:"you have successfully logged in"
		else
			flash[:alert]='invalid email or password'
			render :new
		end

	end

	def destroy
		session[:id]=nil
		redirect_to root_path, notice:"You are logged out"
	end
end