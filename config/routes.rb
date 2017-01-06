Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, except: [:update, :edit, :create, :new]
  resources :songs, except: [:update, :edit, :create, :new]

  root to: 'artists#index'
end
