Rails.application.routes.draw do
  root to: 'planets#index'
  devise_for :users
  get 'pages/profile', to: 'pages#profile', as: :profile
  resources :planets do
    resources :bookings, only: [:index, :new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
  resources :bookings, only: [:destroy, :edit, :update]
  resources :reviews, only: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
