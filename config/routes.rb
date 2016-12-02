Rails.application.routes.draw do

  devise_for :users
 root 'mainpage#index'

  resources :categories, only: [:show]


  resources :posts do
   resources :comments
 end
end
