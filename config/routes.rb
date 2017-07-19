Rails.application.routes.draw do

  get 'projects/new'

  get 'home/index'

  root 'home#index'

  resources :users, :projects
  resources :sessions, :only => [:create, :destroy]
  # resources :search, :only => [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/authenticate' => 'authenticate#index'
  post '/users' => 'users#create'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
