Rails.application.routes.draw do
 
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
