ActiveAdmin.register Song do


  permit_params :title, :artist_name

  actions :all, except: [:destroy]

    form do |f|
    inputs 'Song' do
      f.input :title
      f.input :artist_name
    end
    f.semantic_errors
    f.actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
