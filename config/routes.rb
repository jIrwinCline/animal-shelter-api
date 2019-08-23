Rails.application.routes.draw do
  resources :animals
  post 'authenticate', to: 'authentication#authenticate'
  get '/login', to: 'sessions#login'
  post "/login", to: 'sessions#create'
  get '/register', to: 'users#new'
  post 'register', to: 'users#create'
end
