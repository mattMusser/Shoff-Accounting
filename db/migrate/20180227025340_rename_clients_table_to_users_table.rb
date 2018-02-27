class RenameClientsTableToUsersTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :clients, :users
  end
end
