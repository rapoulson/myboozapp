# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CSV.foreach("/Users/rebeccapoulson/Desktop/my_specs.csv", headers: true) do |row|
  d = Drink.create( :name => row["Name"], :method => row["Method"], :ice => row["Ice"],
   :garnish => row["Garnish"], :notes => row["Notes"],  :glass => row["Glass"])


  ing_index = [2,7,11,14,17,20]
  ing_index.each do |i|
    unless row[i] == nil
      ing = Ingredient.create(:name => row[i])
      DrinkIngredient.create(:drink => d, :ingredient => ing, :measure => row[i-1], :role => row[i+1], :reccomendation => row[i+2], :aged => row[i+3])
    end
  end
end

