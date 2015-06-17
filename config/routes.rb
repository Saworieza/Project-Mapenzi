Rails.application.routes.draw do
  resources :tangazos
  resources :user_steps
  get 'why/index'

  devise_for :users
  get 'home/index'
  root 'home#index'
  
end
