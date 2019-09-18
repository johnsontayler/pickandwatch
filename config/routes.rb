Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]

  resources :movies, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :destroy]
    resources :tastes, only: [:create, :update, :destroy]
  end

  resources :dashboards, only: [:index]

  resources :follows, only: [:create, :destroy]

  resources :wishlist, only: [:index]
end
