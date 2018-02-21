class AddClientNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :client_name, :string
    add_index :users, :client_name, unique: true
  end
end
