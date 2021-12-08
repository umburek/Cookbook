Rails.application.routes.draw do
  get 'confirm_recipe/create'
  devise_for :users
  resources :recipes
  resources :ingredients
  get 'admin_panel/index'
  get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
