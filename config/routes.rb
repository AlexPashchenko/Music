Rails.application.routes.draw do

  devise_for :users
  root 'mainpage#index'

  resources :genres do
    resources :tracks, only: [:index]
  end
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
end
