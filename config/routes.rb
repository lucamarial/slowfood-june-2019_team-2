Rails.application.routes.draw do
  devise_for :admins
  resources :products, only: [:index]
  resources :admins
  root controller: :products, action: :index
end