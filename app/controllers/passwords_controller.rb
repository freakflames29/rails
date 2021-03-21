class PasswordsController < ApplicationController
	before_action :user_loggedin?
	def edit
	end
	def update
		if Current.user.update(pass_parm)
			#redirect and other codes goes here
		end

	end
	private
	def pass_parm
		params.require(:registration).permit(:password,:password_confirmation)
	end
end