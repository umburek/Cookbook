class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.float :ingredients_quantity
      t.string :ingredients_unit
      t.string :ingredients_name

      t.timestamps
    end
  end
end
