class User < ApplicationRecord
	# validates :name, presence: true,:message=>"Enter name pls"
	# validates_presence_of :name, message:"Entr name"
	us=User.find_by(name:"Toton")
	# us.name="Deadpool"
	# us.save
	us.update(bio:"ruby on rails coder")


	def is_cool
		# puts"#{self.name} is cool for his age #{self.age}"
		self.name.to_s+" is cool"
	end

	def info
		self.name+" "+ self.bio
	end
end
