Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, except: [:new, :create, :edit, :update]
  resources :songs, except: [:new, :create, :edit, :update]

  root to: 'artists#index'
end
