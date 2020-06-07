Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  root "home#index"
  resources :areas, only: [:index, :show]
  resources :federations
  resources :teams
  resources :members
end
