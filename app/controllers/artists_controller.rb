class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = Song.where(artist_id: @artist.id)
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
