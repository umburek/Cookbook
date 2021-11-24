class MoveColumnIngredientsUnitToIngredientsRecipeTable < ActiveRecord::Migration[6.1]
  def change
    Ingredient.find_each do |ingredient|
      ingredient.ingredients_recipes.create(
      :unit => ingredient.ingredients_unit,
      :ingredient_id => ingredient.id
      )
    end
  end
end
