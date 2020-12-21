Rails.application.routes.draw do
  get '/dashboard'=> 'dashboard#index', as: :dashboard
 
  resources :properties
  devise_for :accounts
  root to: 'public#main' 
end
