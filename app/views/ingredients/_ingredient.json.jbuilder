json.extract! ingredient, :id, :ingredients_quantity, :ingredients_unit, :ingredients_name, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
