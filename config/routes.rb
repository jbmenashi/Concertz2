Rails.application.routes.draw do
  resources :tickets
  resources :concerts, only: [:index, :show]
  resources :squads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
