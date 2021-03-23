class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset
  	@token=params[:user].signed_id(expires_in: 15.minutes, purpose: "password_reset")
    #signed id is an unique id for a user and it contains the purpose and the time to expire and storing this an instance variable named @token
  	

    mail to: params[:user].email
  end
end
