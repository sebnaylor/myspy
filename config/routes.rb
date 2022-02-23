Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :create, :new] do
    resources :bookings, only: [:show, :update]
  end
  resources :agents, only: [:new, :create, :index, :show, :edit, :update] do
    resources :bookings, only: [:new]
  end
  resources :bookings, only: [:create, :index]
end
