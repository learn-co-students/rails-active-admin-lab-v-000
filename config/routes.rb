Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  # TN: NEEDED TO CHANGE THIS...
  # resources :artists, :songs

  # TO THIS... SO THAT USERS COULD NOT EDIT/DELETE/ETC.
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]

  root to: 'artists#index'
end
