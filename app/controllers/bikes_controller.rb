class BikesController < ApplicationController
  before_action :set_bike, only: %i[show edit update destroy]
  before_action :strong_params, only: %i[create update]
  def index
    @bikes = Bike.all
    @categories = Category.all
    @brands = Brand.all
  end

  def show
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
  end


  def destroy
    @bike.destroy
    redirect_to bikes_path, status: :see_other
  end

  private
  def set_bike
    @bike = Bike.find(params[:id])
  end

  def strong_params
    @bikes = params.require(:bike).permit(:model, :kilometers, :body, :colour, :engine_capacity, :last_modified, :registration_status, :description,
    :features, :price, :stock, :maximum_speed, :fuel_type, :category_id, :brand_id, photos: [] )
  end
end
