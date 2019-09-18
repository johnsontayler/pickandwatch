Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]

  resources :movies, only: [:index, :show] do
    resources :tastes, only: [:create]
  end

  resources :tastes, only: [:new, :create, :destroy]

  resources :dashboards, only: [:index]

  resources :follows, only: [:create, :destroy]

  resources :wishlist, only: [:index]
end
