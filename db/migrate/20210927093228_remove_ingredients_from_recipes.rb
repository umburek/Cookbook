class RemoveIngredientsFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :ingredients, :string
  end
end
