Rails.application.routes.draw do
  resources :photos, only: [:show]
  resources :users
  resources :tickets, only: [:show]
  resources :concerts, only: [:index, :show]
  resources :squads, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
