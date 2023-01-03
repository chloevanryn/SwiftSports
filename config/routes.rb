Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users
  get "events/new", to: "events#new"
  post "events", to: "events#create"
end
