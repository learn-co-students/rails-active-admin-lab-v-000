ActiveAdmin.register Song do
  permit_params :title, :arstist_id
  actions :all, except: [:destroy]
end
