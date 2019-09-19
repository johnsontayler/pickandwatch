Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show] do
    resources :follows, only: [:create, :destroy]
  end

  resources :movies, only: [:index, :show] do
    resources :tastes, only: [:create]
  end

  resources :tastes, only: [:new, :create, :update, :destroy]

  resources :dashboards, only: [:index]

  resources :wishlist, only: [:index]
end
