Rails.application.routes.draw do
  devise_for :accounts
  resources :properties

  get '/dashboard'=> 'dashboard#index', as: :dashboard
  get '/profile/:id'=> 'dashboard#profile', as: :profile
    
  root to: 'public#main' 
end
