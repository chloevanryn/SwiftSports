Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :groups, only: [:new, :create, :show, :index]

  resources :users, only: [:index, :show]

  resources :events, only: [:index, :show, :new, :create] do
    resources :participating_users, only: [:create]
    collection do
      get :my_events
    end
  end

  resources :sports, only: [:index]

end
