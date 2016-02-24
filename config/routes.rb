Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only: [:show]
  resources :songs, only: [:show]

  root to: 'artists#index'
end
