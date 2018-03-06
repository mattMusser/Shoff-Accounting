ActiveAdmin.register Link do
	permit_params :links

	index do
		selectable_column
		column :client_name
		column :url
		column :created_at
		
		actions
	end

	filter :client_name

end