class CreateDrinkIngredients < ActiveRecord::Migration
  def change
    create_table :drink_ingredients do |t|
      t.belongs_to :ingredient
      t.belongs_to :drink
      t.float :measure

      t.timestamps
    end
  end
end
