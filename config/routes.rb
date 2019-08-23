Rails.application.routes.draw do
  resources :animals
  post 'authenticate', to: 'authentication#authenticate'
end
