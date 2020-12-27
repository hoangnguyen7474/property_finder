Rails.application.routes.draw do
  devise_for :accounts
  resources :posts
  resources :properties

  get '/blog' => 'posts#latest', as: :blog
  get '/accounts' => 'admin#accounts', as: :accounts
  get '/dashboard'=> 'dashboard#index', as: :dashboard
  get '/profile/:id'=> 'dashboard#profile', as: :profile

  post "/agent/message" => "properties#email_agent", as: :email_agent
    
  root to: 'public#main' 
end
