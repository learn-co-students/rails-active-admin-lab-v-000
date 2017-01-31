ActiveAdmin.register Artist do

  permit_params :name, :genre
  actions :all, except: [:destroy,]

end
