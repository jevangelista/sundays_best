Rails.application.routes.draw do

  get 'items/new'

  get 'items/create'

  get 'items/show'

  root to: 'welcome#splash'

  #users routes
  resources :users

  #sessions routes
  get "/sessions/new", to: "sessions#new", as: "sign_in"
  get "/sessions/logout", to: "sessions#destroy", as: "logout"
  post "/sessions", to: "sessions#create"

  #ootds routes
  resources :ootds do
  	member do
  		put "like", to: "ootds#upvote"
  	end
  end


end
