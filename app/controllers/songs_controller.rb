class SongsController < ApplicationController
  before_action :check_if_admin

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end


  private

  def check_if_admin
    if admin_user_signed_in?

    else
      redirect_to songs_path
    end
  end

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end
