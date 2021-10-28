class ChangeIngredientsRecipeToIngredientsRecipes < ActiveRecord::Migration[6.1]
  def change
    rename_table :ingredients_recipe, :ingredients_recipes
  end
end
