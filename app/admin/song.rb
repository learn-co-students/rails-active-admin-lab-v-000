ActiveAdmin.register Song do

  permit_params :title
    actions :all, except: [:destroy]


end
