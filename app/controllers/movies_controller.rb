class MoviesController < ApplicationController
	def index
		@movies=Movie.all
	end
	def new
		@movie=Movie.new
	end
	def create
		@movie=Movie.new(m_p)
		if @movie.save
			redirect_to movies_path
			flash[:notice]="created"
		end

	end

	def edit
		@movie=Movie.find(params[:id])

	end

	def update
		@movie=Movie.find(params[:id])
		if @movie.update(m_p)
			redirect_to movies_path
			flash[:notice]="updated"
		end
	end

	def show
		@movie=Movie.find(params[:id])
	end
	private
	def m_p
		params.require(:movie).permit(:name,:genre,:hero)
	end
end
