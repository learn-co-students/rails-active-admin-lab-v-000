ActiveAdmin.register Song do

  actions :all

  permit_params :title, :artist_id
end
