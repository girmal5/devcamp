class PfoliosController < ApplicationController
  def index
    @portfolio_items = Pfolio.all 
  end
end
