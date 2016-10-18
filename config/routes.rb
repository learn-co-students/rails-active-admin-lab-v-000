Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only: [:show, :index] 
  resources :songs, only: [:show, :index]

  get '/artists/new' => 'artist#show'
  get '/artists/edit' => 'artist#show'

  get '/songs/new' => 'songs#show'
  get '/songs/edit' => 'songs#show'

  root to: 'artists#index'
end
