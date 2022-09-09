Rails.application.routes.draw do
  devise_for :users
  
  namespace :users do
    root to: "admin/attendances#index"
  end 

  namespace :admin do
      resources :attendances
      resources :employees
      resources :stores

      root to: "attendances#index"
    end
  # resources :attendances
  # resources :employees
  # resources :stores
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
