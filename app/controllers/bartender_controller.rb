class BartenderController < ApplicationController
  def index
  end

  def select_drink
    @x = params[:method]
    @y = params[:name]
     @selection = Drink.where("method = '#{@x}'")
     redirect_to(@selection[0])
  end
end
