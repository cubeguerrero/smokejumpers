Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :areas, only: [:index, :show]
  resources :federations
  resources :teams
  resources :members
end
