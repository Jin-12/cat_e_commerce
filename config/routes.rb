Rails.application.routes.draw do
  resources :carts, only: [:index]
  devise_for :users
  root 'item#index'
  resources :item, only: [:show] do
    resources :join_table_carts_items
    resources :cat_images, only: [:create]
  end
  resources :users, only: [:index, :show, :edit, :create]
  resources :carts, only: [:show, :destroy] do 
    resources :join_table_orders_items
  end 
  resources :orders, only: [:create, :index, :destroy, :show]
  resources :join_table_orders_items
  resources :charges

end