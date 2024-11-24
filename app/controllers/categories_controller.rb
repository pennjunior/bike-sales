class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @categories_index = Category.includes(:bikes)
  end

  def show
    @category = Category.find_by(id: params[:id]) # Use `find_by` to avoid exceptions
    @bikes = @category.bikes
    @bikes = @bikes.where("price>=?", params[:min_price]) if params[:min_price].present?
    @bikes = @bikes.where("price<=?", params[:max_price]) if params[:max_price].present?
    @bikes = @bikes.where(brand: params[:brand]) if params[:brand].present?
    @bikes = @bikes.where("engine_capacity = ?", params[:engine_capacity]) if params[:engine_capacity].present?
    if @category.nil?
      flash[:alert] = "Category not found."
      redirect_to roots_path # Redirect back to the index page
    else
      @bikes = @category.bikes.page(params[:page]).per(5)
    end
  end
end
