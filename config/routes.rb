Rails.application.routes.draw do
  resources :products, only: [:show]
  mount Cartify::Engine, at: '/'
  devise_for :users
  resources :products, only: [:index]
  root controller: :products, action: :index
end