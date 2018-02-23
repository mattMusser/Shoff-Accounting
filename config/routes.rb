Rails.application.routes.draw do
 
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :users
  
  get 'users', to: "users#index", as: "clients"
  get 'users/:id', to: "users#show", as: "client"

  root "welcome#faq"
end
