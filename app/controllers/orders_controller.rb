class OrdersController < ApplicationController
  before_action :authorize_admin, only: [:index]
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
      redirect_to orders_path, notice: "Order successfully placed!"
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:name, :email, :phone, :quantity)
  end

  def authorize_admin
    unless current_user&.admin?
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to root_path
    end
  end
end
