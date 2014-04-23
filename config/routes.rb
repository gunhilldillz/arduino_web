DinoRails::Application.routes.draw do
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions
  root to: 'home#index'
# root to: 'arduino#index'
  get '/up' => 'arduino#up'
  get '/down' => 'arduino#down'
  get '/left' => 'arduino#left'
  get '/right' => 'arduino#right'
  get '/on' => 'arduino#on'
  get '/off' => 'arduino#off'

end

 
  