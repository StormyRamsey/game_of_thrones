class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
  end

  def create
    @house = House.new(house_params)
    @house = House.new(params.require(:house).permit(:name, :photo_url))
    @house.save
    redirect_to @house
  end

private
  def house_params
    params.require(:house).permit(:name, :photo_url)
  end

end
