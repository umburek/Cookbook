class RemoveColumnIngredientsUnitFromTableIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :ingredients_unit
  end
end
