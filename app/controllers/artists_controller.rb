class ArtistsController < ApplicationController
     before_filter :custom_method, :only => [:new]

  def index
  end

  def show
  end

  # def new
  # end

  # def create
  #   @artist = Artist.new(artist_params)

  #   if @artist.save
  #     redirect_to @artist
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @artist = Artist.find(params[:id])
  # end

  # def update
  #   @artist = Artist.find(params[:id])

  #   @artist.update(artist_params)

  #   if @artist.save
  #     redirect_to @artist
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @artist = Artist.find(params[:id])
  #   @artist.destroy
  #   flash[:notice] = "Artist deleted."
  #   redirect_to artists_path
  # end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def custom_method 
        redirect_to 'show'          
  end 

end
