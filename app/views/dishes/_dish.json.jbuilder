json.extract! dish, :id, :ingredients, :preparation, :preparation_time, :multiplier, :created_at, :updated_at
json.url dish_url(dish, format: :json)
