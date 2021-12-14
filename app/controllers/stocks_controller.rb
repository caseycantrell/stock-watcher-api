class StocksController < ApplicationController

  def index
    stocks = Stock.all
    render json: stocks
  end

  def show
    stock = Stock.find_by(symbol: params[:symbol])
    render json: stock
  end

end
