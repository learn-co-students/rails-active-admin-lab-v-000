class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
