Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/artists', to: redirect('/')
  resources :artists, except: [:edit, :new, :create, :update ] 
  get '/songs', to: redirect('/')
  resources :songs, except: [:edit, :new, :create, :update ] 
  	

  root to: 'artists#index'
end

