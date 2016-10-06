Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  #resources :artists, :songs
  resources :artists, only: [:index, :show] 
  resources :songs, only: [:index, :show]

  root to: 'artists#index'

  #get '/artists/new/:id', to: 'artists#show', id: 'new'

  #get '/artists/new' => {:id=>"new", :controller=>"artists", :action=>"show"}
end
