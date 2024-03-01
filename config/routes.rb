Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  # get 'offers/index'
  # get 'offers/show'
  # get 'offers/index'
  # get 'home/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  # get '/offers', to: 'offers#index', as: 'offers'
  # Defines the root path route ("/")
  # root "posts#index"
  resources :offers, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :index]
  end

  get 'dashboard', to: 'pages#dashboard'
  get 'terms', to: 'pages#terms'
  get 'privacy', to: 'pages#privacy'

end
