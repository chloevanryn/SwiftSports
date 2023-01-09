Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  root to: "pages#home"
  get '/my_events', to: 'events#my_events'
  resources :groups, only: [:new, :create, :show, :index] do
    resources :user_groups, only: [:create]
  end

  resources :users, only: [:index, :show] do
    resources :ratings, only: [:new, :create]
  end


  resources :user_sports, only: [:new, :create]

  resources :participating_users, only: [:destroy]

  resources :user_groups, only: [:destroy]

  resources :events, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
    resources :participating_users, only: [:create]
    collection do
      get :my_events
    end
  end

  resources :chatrooms, only: [:show] do
    resources :messages, only: [:new, :create]
  end

  resources :sports, only: [:index]
  resources :levels, only: [:index]
end
