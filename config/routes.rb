Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/artists/new' => 'artists#show', id: "new"
  get '/artists/edit' => 'artists#show', id: "edit"
  get '/songs/new' => 'songs#show', id: "new"
  get '/songs/edit' => 'songs#show', id: "edit"
  resources :artists, only: [:index, :show]
  resources :songs, only: [:index, :show]

  
  root to: 'artists#index'

end