class GoogleSheetLink < ApplicationRecord
	belongs_to :user
	validates :url, :presence => true
end
