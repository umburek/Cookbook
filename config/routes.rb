Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  resources :ingredients

  namespace :admin do
    root 'confirm_recipes#index'
    resources :confirm_recipes, only: [:index, :create, :destroy]
  end

  root 'home#index'
end