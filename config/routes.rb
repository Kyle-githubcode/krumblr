Rails.application.routes.draw do
  root 'categories#index'
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
