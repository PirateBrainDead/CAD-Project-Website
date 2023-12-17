Rails.application.routes.draw do
root "home#index"

get "/home", to: "home#index"
get '/search', to: "search#index"
get '/about', to: "about#show"


  devise_for :users
    resources :contacts, only: [:new, :create]
  resources :posts do
  resources :comments
  resources :posts



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
#root :to => "home#index"

 end
end
