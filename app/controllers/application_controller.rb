class ApplicationController < ActionController::Base
	before_action :set_current_user
	def set_current_user
		if session[:id]
			Current.reg=Registration.find_by(id:session[:id])
		end
	end
	def user_loggedin?
		redirect_to login_path, notice:"You must be login to edit password" if Current.reg.nil?
	end
end
