ActiveAdmin.register Link do
	permit_params :links

	index do
		selectable_column
		column :client_name
		column :link
		
		actions
	end

	filter :client_name

end