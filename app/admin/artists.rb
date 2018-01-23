ActiveAdmin.register Artist do
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
ActiveAdmin.register Artist do
      permit_params :name, :genre
       actions :all, except: [:destroy]

     form do |f|
         inputs 'Artist' do
           f.input :name
           f.input :genre
         end
         f.semantic_errors
         f.actions
       end
  end
end
