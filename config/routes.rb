Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get 'home/profile'
end
