ActiveAdmin.register Song do
  
  permit_params :name
  actions :all, except: [:destroy]

end
