Rails.application.routes.draw do
  resources :supports do
    member do
      patch "upvote", to: "supports#upvote"
      patch "downvote", to: "supports#downvote"
    end
  end

  resources :ratings

  devise_for :users

  resources :users, :only => [:show]

  resources :posts

  root 'posts#index'
end
 