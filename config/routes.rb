Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index]
  resources :users
  root controller: :products, action: :index
end