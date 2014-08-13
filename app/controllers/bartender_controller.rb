class BartenderController < ApplicationController
  def index
  end

  def select_drink
    @x = params[:method]
    @y = params[:name]
    logger.info params
     @selection = Drink.joins(:ingredients).where(method: @x, ingredients: {name: @y})
     redirect_to(@selection.shuffle[0])
  end


end
