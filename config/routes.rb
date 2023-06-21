Rails.application.routes.draw do
  post '/restaurant_pizzas', to: 'restaurant_pizzas#create'
  resources :pizzas, only: [:index]
  resources :restaurants, only: [:index, :show, :destroy]
end
