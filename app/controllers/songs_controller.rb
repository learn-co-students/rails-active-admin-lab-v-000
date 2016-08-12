class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end
