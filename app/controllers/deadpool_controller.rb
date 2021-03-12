class DeadpoolController < ApplicationController
  def home
  	@name=User.first
  	@some=55
  end

  def about
  	@cool=User.last
  	
  end

  def download
  end
end
