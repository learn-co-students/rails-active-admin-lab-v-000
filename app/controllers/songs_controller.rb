class SongsController < ApplicationController
before_action :is_admin?, only: [:new, :create, :edit, :update, :destroy]
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end

