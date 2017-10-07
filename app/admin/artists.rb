ActiveAdmin.register Artist do

    permit_params :title
    actions :all, except: [:destroy]
    
end
