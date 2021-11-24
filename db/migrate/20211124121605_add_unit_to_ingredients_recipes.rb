class AddUnitToIngredientsRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients_recipes, :unit, :string
  end
end
