class FavouritesController < ApplicationController
  def update
    favourite = Favourite.where(property: Property.find(params[:property]), user: current_user)
    if favourite == []
      Favourite.create(property: Property.find(params[:property]), user: current_user)
      @favourite_exists = true
    else
      favourite.destroy_all
      @favourite_exists = false
    end
    redirect_to property_path(Property.find(params[:property]))
  end
end
