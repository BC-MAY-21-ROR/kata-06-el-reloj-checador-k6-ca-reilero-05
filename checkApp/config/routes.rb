Rails.application.routes.draw do
  devise_for :users
  
  namespace :users do
    root to: "admin/attendances#index"
  end 

  namespace :admin do
      resources :attendances
      resources :employees, only: [:index, :new, :create, :edit, :update, :show]
      resources :stores, only: [:index, :new, :create, :edit, :update, :show]
      resources :reports, only: [:index]
      root to: "attendances#index"
    end
    
  root 'home#index'

  post '/check', to: "home#check"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
