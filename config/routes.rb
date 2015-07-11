Rails.application.routes.draw do
  resources :activities
  get 'contact/index'

  get 'members/index'

  devise_for :admins
  resources :posts do
    member do
      post 'upvote'
      post 'downvote'
  		#get "like", to: "posts#upvote"
  		#get "dislike", to: "posts#downvote"
  	end
    resources :comments, :only => [:create]
  end
  
  resources :tangazos
  resources :user_steps
  devise_for :users
  get 'home/index'
  root 'home#index'
  
end
