Rails.application.routes.draw do
  resources :perks
  resources :addresses
  resources :residences
  resources :categories
  resources :vendors
  # get 'user_sessions/new'
  #
  # get 'user_sessions/create'
  #
  # get 'user_sessions/destroy'

  mount Sidekiq::Web => "/sidekiq" # monitoring console

  root 'perks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'perks#index'
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
