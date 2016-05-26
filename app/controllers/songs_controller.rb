class SongsController < ApplicationController

  def index
    @songs = Song.a
  end

  def show
    @song = Song.find(params[:id])
  end
  
  private

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end

