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
    resources :items do
      put :favorite, on: :member
  	end
  end

 

  get "/items", to: "items#index"
  get "/outfit/generate", to: "items#generate"
  get "/favorites", to: "items#favorite_index"


end
