Rails.application.routes.draw do
  resources :rabbits
  devise_for :users
  resources :supplies
  resources :breeds

  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  #get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
end
