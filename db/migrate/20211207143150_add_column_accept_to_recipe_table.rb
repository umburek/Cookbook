class AddColumnAcceptToRecipeTable < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :accept, :boolean
  end
end
