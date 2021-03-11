class DeadpoolController < ApplicationController
  def home
  	@name=User.first
  end

  def about
  	@cool=User.last
  	
  end

  def download
  end
end
