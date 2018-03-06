class RemoveUserFromGoogleSheetLinks < ActiveRecord::Migration[5.1]
  def change
    remove_column :google_sheet_links, :user_id
  end
end
