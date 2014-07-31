json.array!(@drinks) do |drink|
  json.extract! drink, :id, :name, :method, :glass, :garnish, :ice, :notes
  json.url drink_url(drink, format: :json)
end
