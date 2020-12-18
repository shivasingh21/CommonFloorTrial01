class PropertiesController < ApplicationController
  def index
    @property = Property.all
  end

  def new
    @property = Property.new
  end

  def show
    @property = Property.find(params[:id])
    @favourite_exists = Favourite.where(property: @property,user: current_user) == [] ? false : true
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      redirect_to @property
    else
      render 'edit'
    end
  end

  def create
    @property = Property.new(property_params)
    @property.user = User.first
    if @property.save
      redirect_to @property
    else
      render 'new'
    end
  end

  private
    def property_params
      params.require(:property).permit(:PropertyType, :property_status, :address, :city, :Price, :Area, :OwnerName, :ContactPerson, :Number, :property_image)
    end
end
