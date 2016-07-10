Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :songs, only: [:index, :show]
  resources :artists, only: [:index, :show]

  root to: 'artists#index'

  #get '/artists/new', to: 'artists#show', id:"new"
end
