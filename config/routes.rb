Rails.application.routes.draw do

  root to: 'dashboards#index#home'

  devise_for :users

  resources :users, only: [:index, :show]

  resources :movies, only: [:index, :show] do
    resources :tastes, only: [:create]
  end

  resources :tastes, only: [:new, :create, :update, :destroy]

  get '/', to: 'dashboards#index', as: 'dashboards'

  resources :follows, only: [:create, :destroy]

  resources :wishlist, only: [:index]
end
