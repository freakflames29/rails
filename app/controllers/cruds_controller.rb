class CrudsController < ApplicationController
  def index
  	@names=Crud.all

  end
  def new
  	@name=Crud.new


  end
  def create
  	@name=Crud.new(crud_param)
  	if @name.save
  		redirect_to index_path
  	end

  end
  def destroy

  end
  def update

  end
  def show

  end
  private
  	def crud_param
  		params.require(:name).permit(:name,:title,:age)
  	end
end
