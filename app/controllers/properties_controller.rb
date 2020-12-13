class PropertiesController < ApplicationController
  def index
    @property = Property.all
  end

  def new
    @property = Property.new
  end

  def show
    @property = Property.find(params[:id])
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
      params.require(:property).permit(:PropertyType, :Location, :Price, :Area, :OwnerName, :ContactPerson, :Number)
    end
end
