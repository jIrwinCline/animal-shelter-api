Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :animals
    end
  end
  # resources :animals
  # root to: 'animals#index'
end
