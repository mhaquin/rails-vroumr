class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @vehicles = Vehicle.all
    @categories = ["Category"] + Category.all.map(&:name)

    if params[:query] && params[:query][:address] != ""
      @vehicles = @vehicles.near(params[:query][:address], 20)
    end

    if params[:query] && params[:query][:category] != "Category"
      @vehicles = @vehicles.where(category: Category.find_by(name: params[:query][:category]))
    end

    @vehicles = @vehicles.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@vehicles) do |vehicle, marker|
      marker.lat vehicle.latitude
      marker.lng vehicle.longitude
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @vehicle_coordinates = { lat: @vehicle.latitude, lng: @vehicle.longitude }
    @hash = Gmaps4rails.build_markers(@vehicle) do |vehicle, marker|
      marker.lat vehicle.latitude
      marker.lng vehicle.longitude
    end
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:name, :photo)
  end
end
