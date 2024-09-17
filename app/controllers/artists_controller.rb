class ArtistsController < ApplicationController
  
  def index
    binding.pry
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
