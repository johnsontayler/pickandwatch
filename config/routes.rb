Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index, :show]

  resources :follows, only: [:create, :destroy]

  resources :movies, only: [:index, :show] do
    resources :tastes, only: [:create]
  end

  resources :tastes, only: [:new, :create, :update, :destroy]

  resources :dashboards, only: [:index]

  resources :wishlist, only: [:index]

  get 'tastes/watch', to: 'tastes#watch', as: 'watch_movie'
  get 'tastes/bookmark', to: 'tastes#bookmark', as: 'bookmark_movie'

  get 'tastes/like', to: 'tastes#like', as: 'like_movie'
  get 'tastes/dislike', to: 'tastes#dislike', as: 'dislike_movie'

  root to: 'dashboards#index'
end
