ActiveAdmin.register Song do

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

ActiveAdmin.register Song do
  permit_params :title, :artist_id
  actions :all

  form do |f|
    inputs 'Song' do
      f.input :title
      f.input :artist_id
    end
    f.semantic_errors
    f.actions
  end
end

end
