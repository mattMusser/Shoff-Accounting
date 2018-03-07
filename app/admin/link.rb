ActiveAdmin.register Link do
	permit_params :url

	index do
		selectable_column
		column :user_id
		column :url
		column :created_at
		
		actions
	end

	filter :user_id

	form do |f|
		f.inputs "Link Details" do
			f.input :user_id
			f.input :url
		end
		f.actions
	end

end