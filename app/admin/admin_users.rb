ActiveAdmin.register AdminUser do
  menu false
  permit_params :client_name, :email, :password, :password_confirmation

  index do
    selectable_column
    column :client_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :client_name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :client_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
