class ArtistsController < ApplicationController

  def show
  end


  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
