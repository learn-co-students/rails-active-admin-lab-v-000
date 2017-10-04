Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only: [:show, :index]
  get '/artists/new', to: redirect('/artists#show')
  resources :songs, only: [:show, :index]
  get '/songs/new', to: redirect('/songs#show')

  root to: 'artists#index'
end
