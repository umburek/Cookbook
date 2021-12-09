Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :ingredients
  resource :confirm_recipe, only: :create
  post 'admin_panel/index'
  get 'admin_panel/index'
  get 'home/about'
  root 'home#index'
end