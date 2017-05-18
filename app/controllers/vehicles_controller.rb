class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  skip_before_action :authenticate_user!

  def index
    if params[:query] && params[:query][:category] != ""
      @vehicles = Vehicle.where(category_id: Category.find(params[:query][:category]))
    elsif params[:query] && params[:query][:address] != ""
      @vehicles = Vehicle.near(params[:query][:address], 30).where(category_id: Category.find(params[:query][:category]))
    else
      @vehicles = Vehicle.all
    end

    @vehicles = Vehicle.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@vehicles) do |vehicle, marker|
      marker.lat vehicle.latitude
      marker.lng vehicle.longitude
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:name)
  end

end
