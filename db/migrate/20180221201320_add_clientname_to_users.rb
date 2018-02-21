class AddClientnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :client_name, :string
  end
end
