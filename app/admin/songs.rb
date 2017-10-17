ActiveAdmin.register Song do

  permit_params :title, :artist_id
  actions :all, except: [:update, :edit, :new, :create, :destroy]

  form do |f|
    inputs 'Song' do
      f.input :title
    end
    f.semantic_errors
    f.actions
  end

end
