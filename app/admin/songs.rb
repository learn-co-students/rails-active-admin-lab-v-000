ActiveAdmin.register Song do
  permit_params :artist_name, :title
  actions :all

  form do |f|
    inputs 'Song' do
      f.input :artist
      f.input :title
    end
    f.semantic_errors
    f.actions
  end

end
