class AddGoogleSheetLinksToUser < ActiveRecord::Migration[5.1]
  def change
    add column :users, :google_sheet_links, :url
    add index :users, :google_sheet_links
  end
end
