ActiveAdmin.register Artist do
  permit_params :name
  actions :show

  form do |f|
    inputs 'Author' do
      f.input :name
    end
    f.semantic_errors
    f.actions
  end

end
