Rails.application.routes.draw do

  root to: 'welcome#splash'

  resources :users

  get "/sessions/new", to: "sessions#new", as: "sign_in"
  get "/sessions/logout", to: "sessions#destroy", as: "logout"
  post "/sessions", to: "sessions#create"

end
