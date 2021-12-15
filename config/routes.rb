Rails.application.routes.draw do
  root 'posts#index' 
  devise_for :users, controllers: {
        sessions: 'users/sessions'}
  resources :posts
  get 'users/show'
  #get 'posts/profile'
end
 