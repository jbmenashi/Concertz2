Rails.application.routes.draw do
  resources :users
  resources :tickets, only: [:show, :create]
  resources :concerts, only: [:index, :show]

  get "/login", to: "users#login", as: "login"
  post "/login", to: "users#authorize", as: "authorize"
  get "/new", to: "users#new"
  post "/new", to: "users#create"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
