Rails.application.routes.draw do

  get 'pages/home'
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]

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

  # get '/', to: 'pages#home'

  resources :wishlist, only: [:index]

  # root to: 'dashboards#index'
end
