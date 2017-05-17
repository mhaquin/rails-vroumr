class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:name)
  end

end
