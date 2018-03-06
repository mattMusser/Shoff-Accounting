class RemoveGoogleSheetLinksFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :google_sheet_links
  end
end
