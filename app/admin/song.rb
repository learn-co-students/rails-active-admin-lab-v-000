ActiveAdmin.register Song do
  permit_params :title, :artist_name
  actions :all, except: [:destroy]
end
