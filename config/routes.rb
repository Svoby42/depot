Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'cart', to: 'carts#show'
  get 'store/index'
  get 'clear', to: 'carts#destroy'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "store#index"
end
