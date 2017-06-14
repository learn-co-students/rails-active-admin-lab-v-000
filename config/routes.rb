Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, :songs, only: [:index, :show]
  #resources  except: [:index, :show]
  root to: 'artists#index'
  # get "/artists/new" => "artists#show"
  # patch "/artists/update" => "artists#show"
end
