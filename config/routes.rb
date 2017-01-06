Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, except: [:create, :new, :edit, :update, :destroy]
  resources :songs, except: [:create, :new, :edit, :update, :destroy]
  root to: 'artists#index'
end
