class RemoveIngredientsQuantityFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :ingredients_quantity, :float
  end
end
