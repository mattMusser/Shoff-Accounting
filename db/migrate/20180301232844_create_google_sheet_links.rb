class CreateGoogleSheetLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :google_sheet_links do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
