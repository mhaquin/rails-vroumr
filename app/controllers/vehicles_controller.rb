class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show]
  skip_before_action :authenticate_user!

  def index
    if params[:query][:category].blank?
      @vehicles = Vehicle.all
    else
      @vehicles = Vehicle.where(category_id: Category.find(params[:query][:category]))
      # @vehicles = Vehicle.near(params[:query][:address], 10).where(category_id: Category.find(params[:query][:category]))
    end
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
