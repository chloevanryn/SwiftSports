Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/random", to: "groups#random"

  # resources :groups, only: [:new, :create, :show]
  resources :users
end
