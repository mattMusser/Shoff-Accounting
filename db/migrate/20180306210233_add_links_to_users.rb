class AddLinksToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :links, foreign_key: true
  end
end
