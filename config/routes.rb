Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  # resources :songs
  # resources :artists, except: [:index, :update]
   get 'artists/new' => 'artists#show', id: "new"
   get 'artists/edit' => 'artists#show', id: "edit"
   get 'songs/new' => 'songs#show', id: "new"
   get 'songs/edit' => 'songs#show', id: "edit"
  # get 'artists/edit' => 'artists#show'
  # # root to: 'artists#index'
  

end
