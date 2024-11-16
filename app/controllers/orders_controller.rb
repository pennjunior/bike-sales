class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def new
    @bike = Bike.find(params[:bike_id])
    @order = Order.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @order = @bike.orders.new(order_params)
    if @order.save
      redirect_to @bike, notice: "Order successfully placed!"
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :email, :phone, :quantity)
  end
end
