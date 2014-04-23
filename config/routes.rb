DinoRails::Application.routes.draw do
  
  root to: 'arduino#index'
  get '/up' => 'arduino#up'
  get '/down' => 'arduino#down'
  get '/left' => 'arduino#left'
  get '/right' => 'arduino#right'
  get '/on' => 'arduino#on'
  get '/off' => 'arduino#off'

end
