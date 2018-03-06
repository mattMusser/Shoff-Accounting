class AddGoogleSheetLinksToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :google_sheet_links, :string
    add_index :users, :google_sheet_links
  end
end
