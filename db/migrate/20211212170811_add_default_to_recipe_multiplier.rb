class AddDefaultToRecipeMultiplier < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :multiplier, :float, default: 1.0
  end
end
