ActiveAdmin.register Song do

    permit_params :title, :artist
    actions :all, except: [:destroy]


end
