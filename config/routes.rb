Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  resources :users
  resources :projects
  resources :skills, :only => [:create, :destroy]
  resources :sessions, :only => [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/authenticate' => 'authenticate#index'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
