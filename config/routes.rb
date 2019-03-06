Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/new'
  get 'orders/show'
  devise_for :users
  root 'item#index'
  resources :item, only: [:show]
  resources :users, only: [:index, :show, :edit, :create]
  resources :carts, only: [:show] do
    resources :orders
  end
end
