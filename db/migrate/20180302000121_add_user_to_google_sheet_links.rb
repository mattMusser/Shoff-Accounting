class AddUserToGoogleSheetLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :google_sheet_links, :user_id, :integer
    add_index :google_sheet_links, :user_id
  end
end
