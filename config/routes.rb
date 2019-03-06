Rails.application.routes.draw do
  resources :carts, only: [:index]
  devise_for :users
  root 'item#index'
  resources :item, only: [:show] do
    resources :join_table_carts_items
  end
  resources :users, only: [:index, :show, :edit, :create]
  resources :carts, only: [:show]
end