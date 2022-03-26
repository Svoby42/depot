Rails.application.routes.draw do

  get 'cart', to: 'carts#show'
  get 'store/index'
  get 'clear', to: 'carts#destroy'
  get '/remove/:id', to: 'line_items#destroy', as: 'remove'

  resources :products
  resources :carts
  resources :line_items
  root "store#index"
end
