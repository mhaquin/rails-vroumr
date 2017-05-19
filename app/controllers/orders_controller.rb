class OrdersController < ApplicationController

  def new
     @order = Order.new
  end

  def create
    @user = current_user
    @order = Order.new(order_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @order.vehicle = @vehicle
    @order.user = current_user
    if @order.save
      redirect_to vehicle_orders_path(@vehicle)
    else
      render "vehicle/show"
    end
  end

  def index
    @orders = current_user.orders
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :vehicle_id, :date)
  end
end
