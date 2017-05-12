Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, :songs, except: [:new, :create, :edit, :update, :destroy]

  root to: 'artists#index'
end
