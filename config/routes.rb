Rails.application.routes.draw do
  devise_for :users
  root 'item#index'
  resources :item, only: [:show]
  resources :users, only: [:index, :show, :edit, :create]
  resources :carts, only: [:show]
  resources :join_table_carts_items 
end
