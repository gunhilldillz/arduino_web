DinoRails::Application.routes.draw do
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions
  root to: 'home#index'
  get '/arduino' => 'arduino#index'
  get '/up' => 'arduino#up'
  get '/down' => 'arduino#down'
  get '/left' => 'arduino#left'
  get '/right' => 'arduino#right'

  get '/one_on' => 'arduino#one_on'
  get '/one_off' => 'arduino#one_off'
  get '/two_on' => 'arduino#two_on'
  get '/two_off' => 'arduino#two_off'
  get '/three_on' => 'arduino#three_on'
  get '/three_off' => 'arduino#three_off'
  get '/four_on' => 'arduino#four_on'
  get '/four_off' => 'arduino#four_off'

end

 
  