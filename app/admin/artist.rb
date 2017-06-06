ActiveAdmin.register Artist do
  actions :all, except: [:destroy]
  permit_params :title
end
