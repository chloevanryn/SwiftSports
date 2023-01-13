Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  root to: "pages#home"
  get '/my_events', to: 'events#my_events'
  get '/search', to: 'pages#search', as: :search

  resources :groups, only: [:new, :create, :show, :index, :edit, :update] do
    resources :user_groups, only: [:create]
    resources :posts, only: [:new, :create]
  end

  # resources :user_sports do
  #   member do
  #     get :edit
  #   end
  # end

  resources :users, only: [:index, :show] do
    resources :ratings, only: [:new, :create]
    resources :user_sports, only: [:edit, :update]
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
