Rails.application.routes.draw do
  devise_for :users, controller: { registrations: "registrations" }

  root to: "pages#home"
  resources :groups, only: [:new, :create, :show, :index]

  resources :users, only: [:index, :show]

  resources :user_sports, only: [:new, :create]

  resources :events, only: [:index, :show, :new, :create]

  resources :participating_users, only: [:destroy]

  resources :events, only: [:index, :show, :new, :create] do
    resources :participating_users, only: [:create]
    collection do
      get :my_events
    end
  end

  resources :sports, only: [:index]

end
