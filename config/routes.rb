Rails.application.routes.draw do
  resources :supplies
  resources :breeds

  #get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
