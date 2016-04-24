ActiveAdmin.register Song do

  permit_params :artist_name, :title
  actions :all

end
