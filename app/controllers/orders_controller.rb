class OrdersController < ApplicationController

  def create
    @order = Order.new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @order = @vehicle.orders.new(order_params)

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
    params.require(:order).permit(:user_id, :vehicle_id)
  end
end
