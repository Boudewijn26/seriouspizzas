Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resources :orders
  resources :users
  resources :pizzas
  resources :pizza_orders, path: 'pizza-orders'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
