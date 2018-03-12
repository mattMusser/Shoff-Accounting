class SheetLink < ApplicationRecord
	belongs_to :user
	belongs_to :client_name

	validates :url, :presence => true
end
