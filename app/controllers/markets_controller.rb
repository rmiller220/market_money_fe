class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new.get_market_data
  end
  def show
    # require 'pry'; binding.pry
    @facade = MarketFacade.new.get_market(params[:id])
    @vendors = MarketFacade.new.get_market_vendors(params[:id])
  end
end