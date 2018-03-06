ActiveAdmin.register User do
	permit_params :client_name, :email, :password, :password_confirmation

	index do
		selectable_column
		column :client_name
		column :email
		column :role
		column :created_at
		column :link
		
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
			f.input :links
			f.input :password
			f.input :password_confirmation
		end
		f.actions
	end
end