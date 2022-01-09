Rails.application.routes.draw do
  resources :supports
  resources :ratings
devise_for :users
resources :users, :only => [:show]

  resources :posts

  root 'posts#index'
end
 