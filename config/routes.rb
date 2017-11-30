Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resource :artists, only: [:index]
  resource :songs, only: [:index]

  get '/songs/:id', to: 'songs#show'
  get '/artists/:id', to: 'artists#show'

  root to: 'artists#index'

end
