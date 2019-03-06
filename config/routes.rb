Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/new'
  get 'orders/show'
  devise_for :users
  root 'item#index'
  resources :item, only: [:show] do
    resources :join_table_carts_items
  end
  resources :users, only: [:index, :show, :edit, :create]
<<<<<<< HEAD
  resources :carts, only: [:show] do
    resources :orders
  end
end
=======
  resources :carts, only: [:show]
end
>>>>>>> delivery
