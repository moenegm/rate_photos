Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
        sessions: 'users/sessions'}

  resources :posts
  root 'posts#index'
  #get 'posts/profile'
end
 