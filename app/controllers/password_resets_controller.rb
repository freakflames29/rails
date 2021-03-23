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
	def edit
		@user=Registration.find_signed!(params[:token],purpose:'password_reset')
	rescue ActiveSupport::MessageVerifier::InvalidSignature
		redirect_to password_reset_path,notice:"Link expired! try again"
	end
	def update
		@user=Registration.find_signed!(params[:token],purpose:'password_reset')
		if params[:registration][:password]==""
			render :edit
			flash[:error]="Field can't be blank"
		elsif @user.update(pass_param)
			redirect_to login_path
			flash[:succ]="Password reset successfully login to continue"
		else
			render :edit
		end

		puts @user.email

	end
	private
	def pass_param
		params.require(:registration).permit(:password,:password_confirmation)

	end
end
