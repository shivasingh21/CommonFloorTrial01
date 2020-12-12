class PropertiesController < ApplicationController
  def index
    @property = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to 'root'
    end
  end
end
