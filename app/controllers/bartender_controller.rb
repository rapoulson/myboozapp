class BartenderController < ApplicationController
  def index
  end

  def select_drink
    @x = params[:method]
    @y = params[:name]
    @selection = Drink.joins(:ingredients).where(method: @x, ingredients: {name: @y})
    unless @selection.empty?
      target = @selection.shuffle[0]
      logger.info "selections: #{@selection}"
      logger.info "shuffled: #{@selection.shuffle}"
      logger.info "redirect the user to #{target}"
      redirect_to target
    else
      redirect_to "http://google.com"
    end
  end


end
