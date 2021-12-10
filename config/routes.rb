Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'home#index'
  get 'home/profile'
end
