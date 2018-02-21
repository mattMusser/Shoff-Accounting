class AddClientnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :clientname, :string
  end
end
