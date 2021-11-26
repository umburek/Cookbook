class ChangeIngredientsRecipeToRecipeIngredient < ActiveRecord::Migration[6.1]
  def change
    rename_table :ingredients_recipes, :recipe_ingredients
  end
end
