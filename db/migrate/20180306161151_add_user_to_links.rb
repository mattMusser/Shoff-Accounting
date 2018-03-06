class AddUserToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :client_name, :string
    add_index :links, :client_name
    add_reference :links, :users, index:true
  end
end
