# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CSV.foreach("/Users/rebeccapoulson/Desktop/raines_specs.csv", headers: true) do |row|

  Drink.create( :name => row["Name"], :method => row["Method"], :ice => row["Ice"],
   :garnish => row["Garnish"], :notes => row["Notes"],  :glass => row["Glass"])
end

