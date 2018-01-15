class ArtistsController < ApplicationController
  def index
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
