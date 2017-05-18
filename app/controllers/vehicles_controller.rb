class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  skip_before_action :authenticate_user!

  def index

    if params[:query] && params[:query][:category] != ""
      @vehicles = Vehicle.where(category_id: Category.find(params[:query][:category]))
    # elsif params[:query] && params[:query][:address] != ""
      # @vehicles = Vehicle.near(params[:query][:address], 10).where(category_id: Category.find(params[:query][:category]))
    else
      @vehicles = Vehicle.all
    end
  end

  def show
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:name, :photo)
  end

end
