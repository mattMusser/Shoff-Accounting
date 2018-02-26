class AddClientNameToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :client_name, :string
    add_index :admin_users, :client_name, unique: true
  end
end
