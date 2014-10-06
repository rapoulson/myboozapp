class AddDetailsToDrinkIngredient < ActiveRecord::Migration
  def change
    add_column :drink_ingredients, :role, :string
    add_column :drink_ingredients, :reccomendation, :string
    add_column :drink_ingredients, :aged, :boolean
  end
end
