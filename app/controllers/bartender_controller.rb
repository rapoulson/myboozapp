class BartenderController < ApplicationController
  def index
  end

  def select_drink
    @x = params[:method]
    @y = params[:name]
    @selection = Drink.joins(:ingredients).where(method: @x, ingredients: {name: @y})
    unless @selection.empty?
      target = @selection.shuffle[0]
      redirect_to drink_path(target, :method => @x, :name => @y)
      # redirect_to target
    else
      render :notfound
    end
  end

end
