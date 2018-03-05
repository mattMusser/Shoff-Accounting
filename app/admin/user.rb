ActiveAdmin.register User do
	permit_params :client_name, :email, :password, :password_confirmation, :google_sheet_links

	index do
		selectable_column
		column :client_name
		column :email
		column :role
		column :created_at
		column :google_sheet_links
		
		actions
	end

	filter :client_name
	filter :email
	filter :created_at
	filter :role

	form do |f|
		f.inputs "User Details" do
			f.input :client_name
			f.input :email
			f.input :password
			f.input :password_confirmation
		end
		f.actions
	end
end