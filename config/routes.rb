Rails.application.routes.draw do
  root 'categories#index'
  get    '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get 'sessions/new'
  get    '/login',   :to => 'sessions#new'
  post   '/login',   :to => 'sessions#create'
  delete '/logout',  :to => 'sessions#destroy'
  get 'errors/not_found'
  get 'errors/internal_server_error'
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  resources :comments
  resources :posts
  resources :blogs
  resources :categories
  resources :users
end
