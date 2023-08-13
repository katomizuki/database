Rails.application.routes.draw do
  resources :players
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'search', to: 'players#search' 
  # Defines the root path route ("/")
  # root "articles#index"
end
