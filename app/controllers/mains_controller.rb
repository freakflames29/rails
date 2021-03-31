class MainsController < ApplicationController
	before_action :loggedin?
	def index
		# if session[:id]
		# 	@reg=Registration.find_by(id:session[:id])

		# end
	end
	def my_tweets
		@MyTweets=Current.reg.tweets
	end
end
