class AddRecipeNameToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :recipe_name, :string
  end
end
