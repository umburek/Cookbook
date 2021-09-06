class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :ingredients
      t.string :preparation
      t.integer :preparation_time
      t.float :multiplier

      t.timestamps
    end
  end
end
