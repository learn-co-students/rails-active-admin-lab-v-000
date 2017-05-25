Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, except: [:new, :create, :update]
  resources :songs, except: [:new, :create, :update]

  root to: 'artists#index'
  
  
  get '/artists/new', to: 'artists#show'
  get '/songs/new', to: 'songs#show'
end
