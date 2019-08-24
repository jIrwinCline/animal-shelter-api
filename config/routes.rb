Rails.application.routes.draw do
  concern :api_base do
    resources :animals
    root to: "sessions#login"
    post 'authenticate', to: 'authentication#authenticate'
    get '/login', to: 'sessions#login'
    post "/login", to: 'sessions#create'
    get '/register', to: 'users#new'
    post '/register', to: 'users#create'
    get '/random', to: 'animals#random'
    get '/species', to: 'animals#species'
  end
  namespace :v1 do
    concerns :api_base
  end
end
