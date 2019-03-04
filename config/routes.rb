Rails.application.routes.draw do
  devise_for :users
  root 'item#index'
  resources :items, only: [:show]
end
