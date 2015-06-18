Rails.application.routes.draw do
  devise_for :admins
  resources :posts do
    member do
  		get "like", to: "posts#upvote"
  		get "dislike", to: "posts#downvote"
  	end
    resources :comments, :only => [:create]
  end
  
  resources :tangazos
  resources :user_steps
  get 'why/index'

  devise_for :users
  get 'home/index'
  root 'home#index'
  
end
