Rails.application.routes.draw do
 
  get 'users/index'

  get 'users/show'

  get 'users/update'

  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
