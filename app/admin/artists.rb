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
    # controller do 
        # def create 
        #     @artist = Artist.new(permitted_params[:artist])
        #     if @artist.save 
        #         redirect_to @artist 
        #     else 
        #         render :new 
        #     end 
        # end 
        # def edit 
        #     @artist = Artist.find(permitted_params[:id])
        # end 
       # def destroy 
        #  @artist = Artist.find(params[:id])
        #  @artist.destroy
        #  flash[:notice] = "Artist deleted."
        #  redirect_to artists_path
       # end 
    # end 
    permit_params :name 

    actions :all, except: [:destroy]
end
