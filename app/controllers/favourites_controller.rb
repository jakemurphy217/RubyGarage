class FavouritesController < ApplicationController
  def update
    favourite = Favourite.where(carsforsale: Carsforsale.find(params[:carsforsale]), user: current_user)
    if favourite == []
      # create favourite
      Favourite.create(carsforsale: Carsforsale.find(params[:carsforsale]), user: current_user)
      @favourite_exists = true
    else
      # delete favourite
      Favourite.destroy_all
      @favourite_exists = false
    end
    respond_to do |format|
      format.html{}
      format.js{}
    end
  end
end
