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
      OrderMailer.order_notification(@order).deliver_now
      flash[:notice] = "Your bike order has been placed successfully!"
      redirect_to order_confirmation_path(@order), notice: "Your order has been placed successfully!"
    else
      flash.now[:alert] = "There was an issue with your order. Please try again."
      render :new
    end
  end

  def confirmation
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:bike_id, :name, :email, :phone, :quantity, :location)
  end

  def authorize_admin
    unless current_user&.admin?
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to root_path
    end
  end
end
