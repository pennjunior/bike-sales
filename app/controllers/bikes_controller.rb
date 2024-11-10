class BikesController < ApplicationController
  before_action :bike_params, only: %i[show edit update destroy]
  def index
    @bikes = Bike.all
    @categories = Category.all
    @brands = Brand.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def bike_params
    @bike = Bike.find(params[:id])
  end
end
