Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/groups", to: "groups#show"

  # resources :groups, only: [:new, :create, :show]
  resources :users
end
