class Registration < ApplicationRecord
	has_secure_password

	validates :name, presence: true ,length: {in:5..30,message:" must be in 5-30 charector"}
	validates :email, presence: true , format:{with:/^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i , message: "Must be a valid email",:multiline => true }

end
