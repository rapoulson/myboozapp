class DrinkIngredientsController < ApplicationController
  before_action :set_drink_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /drink_ingredients
  # GET /drink_ingredients.json
  def index
    @drink_ingredients = DrinkIngredient.all
  end

  # GET /drink_ingredients/1
  # GET /drink_ingredients/1.json
  def show
  end

  # GET /drink_ingredients/new
  def new
    @drink_ingredient = DrinkIngredient.new
  end

  # GET /drink_ingredients/1/edit
  def edit
  end

  # POST /drink_ingredients
  # POST /drink_ingredients.json
  def create
    @drink_ingredient = DrinkIngredient.new(drink_ingredient_params)

    respond_to do |format|
      if @drink_ingredient.save
        format.html { redirect_to @drink_ingredient, notice: 'Drink ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @drink_ingredient }
      else
        format.html { render :new }
        format.json { render json: @drink_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drink_ingredients/1
  # PATCH/PUT /drink_ingredients/1.json
  def update
    respond_to do |format|
      if @drink_ingredient.update(drink_ingredient_params)
        format.html { redirect_to @drink_ingredient, notice: 'Drink ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @drink_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @drink_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_ingredients/1
  # DELETE /drink_ingredients/1.json
  def destroy
    @drink_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to drink_ingredients_url, notice: 'Drink ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink_ingredient
      @drink_ingredient = DrinkIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drink_ingredient_params
      params.require(:drink_ingredient).permit(:float)
    end
end
