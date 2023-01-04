Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:index, :show]
  resources :events, only: [:index, :show, :new, :create] do
    collection do
      get :my_events
    end
  end
end
