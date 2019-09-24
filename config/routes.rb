Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]

  resources :follows, only: [:create, :destroy]

  resources :movies, only: [:index, :show] do
    resources :tastes, only: [:create]
  end

  resources :tastes, only: [:new, :create, :update, :destroy] do
    member do
      patch :bookmark
      patch :watch
      patch :like
      patch :dislike
    end
  end

  resources :dashboards, only: [:index]

  resources :wishlist, only: [:index]

  root to: 'dashboards#index'
end
