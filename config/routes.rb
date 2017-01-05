Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/artists/:id', to: 'artists#show'
  get '/songs/:id', to: 'songs#show'
  resources :artists, :songs, only: [:index, :show]

  root to: 'artists#index'
end
