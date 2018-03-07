class RemoveIndexFromLinks < ActiveRecord::Migration[5.1]
  def change
    remove_index :links, :users_id
  end
end
