ActiveAdmin.register Artist do
actions :all, except: [:destroy]

  permit_params :name

end
