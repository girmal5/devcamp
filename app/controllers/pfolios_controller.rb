class PfoliosController < ApplicationController
  def index
    @portfolio_items = Pfolio.all
  end



  def new

# it doesnt actually create it it just renders the stuff
    @portfolio_item = Pfolio.new

  end

  def create
    @portfolio_item = Pfolio.new(pfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to pfolios_path, notice: 'Portfolio item was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end


def pfolio_params
    params.require(:pfolio).permit(:title,:subtitle,:body)
end


end
