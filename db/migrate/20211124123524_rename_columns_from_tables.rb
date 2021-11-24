class RenameColumnsFromTables < ActiveRecord::Migration[6.1]
  def change
    rename_column :ingredients, :ingredients_name, :name
    rename_column :recipes, :recipe_name, :name
  end
end
