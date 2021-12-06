class AddColumnRoleToUsersTable < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string
  end

  class User < ActiveRecord::Base
    enum role: [:admin, :registered]
  end
end