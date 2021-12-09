Rails.application.routes.draw do
  root 'home#index'
  get 'home/profile'
end
