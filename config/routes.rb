Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get '/artists', to: redirect('/admin/artists')
  get '/songs'  , to: redirect('/admin/songs')

  get 'artists/new',  to: 'artists#show', defaults: { id: 'new'  }
  get 'artists/edit', to: 'artists#show', defaults: { id: 'edit' }
  get 'songs/new',    to: 'songs#show',   defaults: { id: 'new'  }
  get 'songs/edit',   to: 'songs#show',   defaults: { id: 'edit' }

  # root to: 'artists#index'
  get '/', to: redirect('/admin/artists')
end
