Rails.application.routes.draw do


  devise_for :users
  root to: 'posts#index'
  resources :posts
  resources :replies
   
   resources :posts do
    resources :replies
   end
   
   resources :users do 
     get "/posts", to: "posts#user_posts"
    resources :posts
   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
