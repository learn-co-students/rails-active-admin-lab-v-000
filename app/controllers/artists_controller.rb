class ArtistsController < ApplicationController
  before_action :check_if_admin


  def index
  end

  def show
  end


  private

  def check_if_admin
    if admin_user_signed_in?

    else
      redirect_to artists_path
    end
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
