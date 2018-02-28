ActiveAdmin.register User do
	
	form do |f|
		f.inputs "User Details" do
			f.input :client_name
			f.input :email
			f.input :password
			f.input :password_confirmation
		end
		f.actions
	end

	index do
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



end