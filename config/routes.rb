Rails.application.routes.draw do

 root 'mainpage#index'
 resources :posts do
   resources :comments
 end
end
