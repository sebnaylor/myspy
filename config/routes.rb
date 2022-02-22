Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :agents, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :new] do
    resources :bookings, only: [:show, :update]
  end
  resources :agents, only: [:new, :create, :index] do
    resources :bookings, only: [:new]
  end
  resources :bookings, only: [:create, :index]
end
