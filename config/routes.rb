Rails.application.routes.draw do

  devise_for :users
 root 'mainpage#index'

  resources :categories, only: [:create, :destroy, :update]


  resources :posts do
    resources :tracks
   resources :comments, only: [:create, :destroy]
 end
end
