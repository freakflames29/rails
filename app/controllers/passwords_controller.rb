class PasswordsController < ApplicationController
	before_action :user_loggedin?
	def edit
	end
	def update
		#checking if password fields are blank or not
		if params[:registration][:password]==""
			render :edit
			flash[:alert]="Field can't be blank"

		elsif Current.reg.update(pass_parm)
			redirect_to root_path, notice: "Password updated successfully"
			puts 'ksldjsakjdfksfjsdkfjdks'+' " '+params[:registration][:password]+' " '
			
		else
			render :edit
		end

	end
	private
	def pass_parm
		params.require(:registration).permit(:password,:password_confirmation)
	end
end