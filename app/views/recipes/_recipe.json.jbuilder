json.extract! recipe, :id, :ingredients, :preparation, :preparation_time, :multiplier, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
