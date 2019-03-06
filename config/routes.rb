Rails.application.routes.draw do
  resources :carts, only: [:index]
  devise_for :users
  root 'item#index'
  resources :item, only: [:show]
end
