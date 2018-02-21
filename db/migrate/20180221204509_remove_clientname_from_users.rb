class RemoveClientnameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :client_name
  end
end
