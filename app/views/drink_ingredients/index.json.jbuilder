json.array!(@drink_ingredients) do |drink_ingredient|
  json.extract! drink_ingredient, :id, :float
  json.url drink_ingredient_url(drink_ingredient, format: :json)
end
