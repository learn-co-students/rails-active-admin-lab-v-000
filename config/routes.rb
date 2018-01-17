Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # resources :artists, :songs
  get 'artists/index', to: 'artists#index'
  get 'artists/:id', to: 'artists#show'
  get 'songs/index', to: 'songs#index'
  get 'songs/:id', to: 'songs#show'

  root to: 'artists#index'
end
