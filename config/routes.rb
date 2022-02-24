Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :create, :new] do
    resources :bookings, only: [:show, :update]
  end
  resources :agents, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
  resources :users, only: [:show]
  get "/dashboard/:id", to: 'users#show'
end
