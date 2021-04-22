Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#show'
  resources :users, :only => [:show]
  resources :shifts, :only => [:show]
  resources :news, :only => [:new, :create]
  
  get "calendar/index", to:"calendar#index"
  get "oauth2callback", to:"calendar#callback"
  
  get 'news/index', to: 'news#index'
  get 'news/new'
  post 'news/new', to: 'news#create'
  get 'news/:id', to: 'news#show'
  
end