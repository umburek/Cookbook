class AddNewColumnsToUserTable < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nick, :string
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :phone, :integer
  end
end
