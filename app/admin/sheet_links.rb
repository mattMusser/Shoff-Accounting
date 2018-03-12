ActiveAdmin.register SheetLinks do
	permit_params :url, :client_name
	config.sort_order = 'client_name_dsc'

	index do
		selectable_column
		column :client_name
		column :url
		column :created_at

		actions
	end

	filter :client_name

	form do |f|
		f.inputs "Sheet Link Details" do
			f.input :client_name
			f.input :url
		end
		f.actions
	end
end