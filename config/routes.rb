Rails.application.routes.draw do
  devise_for :users
  root 'item#index'
  resources :item, only: [:show] do
    resources :join_table_carts_items
    resources :cat_images, only: [:create]
  end
  resources :users, only: [:index, :show, :edit, :create]
  resources :carts, only: [:show]
end