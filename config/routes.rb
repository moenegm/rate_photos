Rails.application.routes.draw do
  resources :ratings
devise_for :users
resources :users, :only => [:show]

  resources :posts

  root 'posts#index'
end
 