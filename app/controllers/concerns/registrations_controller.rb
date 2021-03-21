class RegistrationsController < ApplicationController
	def new
		@register=Registration.new

	end
	def create
		@register=Registration.new(reg_para)
		if @register.save
			session[:id]=@register.id
			redirect_to root_path,notice:"You have succefully signed up"
		else
			render :new
		end

	end
	private
	def reg_para
		params.require(:registration).permit(:name,:email,:password,:password_confirmation)
	end
end