Rails.application.routes.draw do
  get 'sheet_links/show'

  get 'sheet_links/new'

  get 'sheet_links/edit'

  get 'sheet_links/destroy'

  get 'sheet_links_controller/show'

  get 'sheet_links_controller/new'

  get 'sheet_links_controller/edit'

  get 'sheet_links_controller/destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :user do
    #root to: "devise/sessions#new"
    delete "logout" => "devise/sessions#destroy", :as => "logout"
  end

  resources :users

  get 'users', to: "users#index", as: "clients"
  get 'users/:id', to: "users#show", as: "client"

  root 'users#show'
end
