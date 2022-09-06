Rails.application.routes.draw do
  namespace :admin do
      resources :attendances
      resources :employees
      resources :stores

      root to: "attendances#index"
    end
  resources :attendances
  resources :employees
  resources :stores
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
