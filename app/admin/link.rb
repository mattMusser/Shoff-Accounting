ActiveAdmin.register Link do
	permit_params :url, :email, :client_name

	index do
		selectable_column
		column :client_name
		column :url
		column :created_at
		
		actions
	end

	filter :client_name

	form do |f|
		f.inputs "Link Details" do
			f.input :client_name, as: :select, collection: User.select(:client_name).uniq
			f.input :url
		end
	end

end