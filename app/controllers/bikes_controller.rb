class BikesController < ApplicationController
  before_action :set_bike, only: %i[show edit update destroy]
  before_action :strong_params, only: %i[create update]
  before_action :authorize_admin, only: %i[new edit destroy]
  def index
    if params[:query].present?
      @bikes = Bike.global_search(params[:query]).limit(8)

      @scroll_to_bikes = true
    else
      @bikes = Bike.all.limit(8)
    end
    @categories = Category.all
    @brands = Brand.all
    @reviews = Review.all.limit(4)
    @articles = Article.all.limit(5)
    @e_bikes = Bike.joins(:category).where(categories: { name: "Electric" }).order(created_at: :desc).limit(4)
  end

  def show
    @order = Order.new(bike: @bike)
  end

  def new
    @bike = Bike.new(params[:bike])
  end

  def create
    @bike = Bike.new(strong_params)
    if @bike.save
      redirect_to bike_path(@bike), notice: "Bike was successfully updated."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bike.update(strong_params)
      redirect_to bike_path(@bike), notice: "Bike was successfully updated."
    else
      render :edit
    end
    # if strong_params[:photos].present?
    #   @bike.photos.attach(strong_params[:photos])
    # end

    # if @bike.update(strong_params.except(:photos))
    #   redirect_to @bike, notice: "Bike was successfully updated."
    # else
    #   render :edit
    # end
  end


  def destroy
    @bike = Bike.find(params[:id])
    if @bike.category && @bike.brand
      @bike.destroy
      redirect_to bikes_path, status: :see_other
    else
      flash[:alert] = "Bike cannot be deleted due to associated category or brand."
      redirect_to bikes_path
    end
  end

  def create_order
    @bike = Bike.find(params[:bike_id])  # Get the bike from params
    @order = @bike.orders.new(order_params)

    if @order.save
      redirect_to @bike, notice: 'Order was successfully created.'
    else
      render :show  # Render the show page again in case of errors
    end
  end

  private
  def set_bike
    @bike = Bike.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:name, :email, :phone, :quantity)
  end

  def strong_params
    @bikes = params.require(:bike).permit(:model, :kilometers, :body, :colour, :engine_capacity, :last_modified, :registration_status, :description,
    :features, :price, :stock, :maximum_speed, :fuel_type, :category_id, :brand_id, photos: [] )
  end

  def authorize_admin
    redirect_to root_path, alert: "Not authorized!" unless current_user&.admin?
  end
end
