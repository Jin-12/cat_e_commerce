Rails.application.routes.draw do

  namespace :admin do
      resources :users
      # resources :carts
      resources :items
      #resources :join_table_carts_items
      # resources :join_table_orders_items
      resources :orders

      root to: "orders#index"
    end
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
  resources :orders
  resources :join_table_orders_items

end
