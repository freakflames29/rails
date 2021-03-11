class User < ApplicationRecord
	# validates :name, presence: true,:message=>"Enter name pls"
	# validates_presence_of :name, message:"Entr name"

	def is_cool
		# puts"#{self.name} is cool for his age #{self.age}"
		self.name.to_s+" is cool"
	end
end
