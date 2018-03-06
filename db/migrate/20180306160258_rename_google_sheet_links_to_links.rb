class RenameGoogleSheetLinksToLinks < ActiveRecord::Migration[5.1]
  def change
    rename_table :google_sheet_links, :links
  end
end
