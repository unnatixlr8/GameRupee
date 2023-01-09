Rails.application.routes.draw do
  resources :games
  #get 'home/index'
  root to: "home#index"
  get 'home/search'
  get '/search', to: 'home#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
