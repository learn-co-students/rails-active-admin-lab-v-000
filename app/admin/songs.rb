ActiveAdmin.register Song do
  permit_params :title, :artist_id
  actions :all


end
