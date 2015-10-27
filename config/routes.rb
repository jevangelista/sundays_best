Rails.application.routes.draw do

  root to: 'welcome#splash'

  #users routes
  resources :users

  #sessions routes
  get "/sessions/new", to: "sessions#new", as: "sign_in"
  get "/sessions/logout", to: "sessions#destroy", as: "logout"
  post "/sessions", to: "sessions#create"

  #ootds routes
  resources :ootds do
    resources :items
  	member do
  		put "like", to: "ootds#upvote"
  	end
  end

  #items routes
  resources :items

  get "/outfit/generate", to: "items#generate"


end
