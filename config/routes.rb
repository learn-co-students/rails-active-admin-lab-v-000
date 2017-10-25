Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  #resources :artists, :songs
  resources :artists, only: [:show]
  resources :songs, only: [:show, :index]

  root to: 'artists#index'
end
