class AddIngredientsRecipe < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients_recipe do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.float :quantity
      t.timestamps
    end
  end
end
