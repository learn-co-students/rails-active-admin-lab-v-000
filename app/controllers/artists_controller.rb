class ArtistsController < ApplicationController
  
  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
