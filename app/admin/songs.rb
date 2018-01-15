ActiveAdmin.register Song do
    permit_params :name, :genre
    actions :all
end
