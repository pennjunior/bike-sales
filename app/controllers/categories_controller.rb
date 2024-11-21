class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @categories_index = Category.includes(:bikes)
  end

  def show
    @category = Category.find_by(id: params[:id]) # Use `find_by` to avoid exceptions
    if @category.nil?
      flash[:alert] = "Category not found."
      redirect_to roots_path # Redirect back to the index page
    else
      @bikes = @category.bikes.page(params[:page]).per(10)
    end
  end
end
