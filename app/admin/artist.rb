ActiveAdmin.register Artist do
  permit_params :name
  actions :all, except: [:destroy]


end
