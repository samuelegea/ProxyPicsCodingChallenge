Rails.application.routes.draw do
  resources :orders
  devise_for :users
  resources :addresses
  get 'static_pages/homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
