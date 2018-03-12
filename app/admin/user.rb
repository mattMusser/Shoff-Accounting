ActiveAdmin.register User do
	permit_params :client_name, :email, :password, :password_confirmation
	config.sort_order = 'client_name_asc'

	index do
		selectable_column
		column :client_name
		column :email
		column :role
		column :created_at
		
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