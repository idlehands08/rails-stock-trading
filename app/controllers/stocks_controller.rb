class StocksController < ApplicationController
  def index
    @stocks = Stock.all.order(:stock_symbol)
  end
end
