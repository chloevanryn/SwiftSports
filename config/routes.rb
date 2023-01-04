Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :groups, only: [:new, :create, :show, :index]

  resources :users, only: [:index, :show]
  resources :events, only: [:index, :show, :new, :create]
  resources :sports, only: [:index]
end
