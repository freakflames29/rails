class PasswordResetsController < ApplicationController
	def new

	end
	def create
		@user=Registration.find_by(email:params[:email])

		if @user.present?

			#mailer
			PasswordMailer.with(user: @user).reset.deliver_now

			redirect_to root_path,notice:"Password reset link sent to the email"
		else
			flash[:alert]="Invalid email"
			render :new
		end
		
	end
end
