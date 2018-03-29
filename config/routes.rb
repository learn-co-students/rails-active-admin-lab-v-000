Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, :except => [:new, :edit, :create, :update] do
    collection do
      get 'show', :action => 'new'
    end
  end

  resources :songs, :except => [:new, :edit, :create, :update] do
    collection do
      get 'show', :action => 'new'
    end
  end

  root to: 'artists#index'
end
