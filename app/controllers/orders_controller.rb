class OrdersController < ApplicationController
  before_action :authorize_admin, only: [:index]
  def index
    @orders = Order.all
  end
  def new
    @bike = Bike.friendly.find(params[:bike_id])
    @order = Order.new
  end

  def create
    if params[:order][:nickname].present?  # Honeypot check
      Rails.logger.warn "Honeypot triggered: Possible bot detected."
      redirect_to root_path, alert: "Invalid request detected."
      return
    end

    @bike = Bike.friendly.find(params[:bike_id])
    @order = @bike.orders.new(order_params)

    if @order.save
      # Generate the Cloudinary URL for the first attached photo or use a placeholder
      bike_photo_url = @bike.photos.attached? ? Cloudinary::Utils.cloudinary_url(@bike.photos.first.key) : 'https://res.cloudinary.com/your_cloud_name/image/upload/v1234567890/placeholder_bike.jpg'

      # Send email notification
      OrderMailer.order_notification(@order, bike_photo_url).deliver_now

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
