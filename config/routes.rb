Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only:[:index, :show]
  resource :songs, only:[:index, :show]

  get 'songs/new', to: 'songs#show', id: 'new'
  get 'songs/edit', to: 'songs#show', id: 'edit'

  root to: 'artists#index'
end
