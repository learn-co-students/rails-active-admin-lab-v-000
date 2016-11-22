ActiveAdmin.register Song do
  permit_params :title, :artist_id

  # sanatize params for song form 
end
