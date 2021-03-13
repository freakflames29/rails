class PortfoliosController < ApplicationController
  def index
    @portfolios=Portfolio.all
  end
  def new
    @portfolio=Portfolio.new
  end
  def create
    @portfolioI=Portfolio.new(portfolio_params)
    if @portfolioI.save
      redirect_to portfolios_path
    end

  end
  def portfolio_params
    params.require(:portfolio).permit(:title,:subtitle)
  end
  def edit
    @portfolio=Portfolio.find(params[:id])
  end
  def update
    @portfolio=Portfolio.find(params[:id])
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path

    end
  end
end
