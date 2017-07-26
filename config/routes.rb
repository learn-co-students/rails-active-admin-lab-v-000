Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :songs, only: [:show]
  resources :artists, only: [:show]

  root to: 'artists#index'
end
