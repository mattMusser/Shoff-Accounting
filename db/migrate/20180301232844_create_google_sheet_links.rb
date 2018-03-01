class CreateGoogleSheetLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :google_sheet_links do |t|

      t.timestamps
    end
  end
end
