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

	create_or_edit = Proc.new {
		@client = User.find_or_create_by_id(params[:id])
		@client.attributes = params[:user].delete_if do |v|
			(v.empty? && !@user.new_record?)
		end
		if @client.save 
			redirect_to :action => :show, :id => @client.id
		else
			render active_admin_template((@user.new_record? ? 'new' : 'edit') + '.html.erb')
		end
	}
	member_action :create, :method => :post, &create_or_edit
  member_action :update, :method => :put, &create_or_edit

end