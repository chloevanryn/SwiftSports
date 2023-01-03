Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:index, :show]

  resources :events, only: [:index, :show]

  get "events/new", to: "events#new"
  post "events", to: "events#create"

end
