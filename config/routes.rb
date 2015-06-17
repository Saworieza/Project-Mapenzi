Rails.application.routes.draw do
  resources :tangazos
  get 'why/index'

  devise_for :users
  get 'home/index'
  root 'home#index'
  
end
