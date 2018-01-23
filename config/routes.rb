Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, :songs, only: [:index, :show]

  # get '/artists/new', to: 'artists#show'
  # get '/songs/new', to: 'songs#show'
  # get '/artists/edit', to: 'artists#show'
  # get '/songs/edit', to: 'songs#show'
  root to: 'artists#index'
end
