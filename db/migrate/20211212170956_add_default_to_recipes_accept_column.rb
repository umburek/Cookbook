class AddDefaultToRecipesAcceptColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :accept, :boolean, default: false
  end
end
