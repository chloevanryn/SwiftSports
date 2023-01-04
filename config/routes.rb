Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :groups, only: [:new, :create, :show, :index]

  resources :users, only: [:index, :show]

  resources :user_sports, only: [:new, :create]

  resources :events, only: [:index, :show, :new, :create]

end
