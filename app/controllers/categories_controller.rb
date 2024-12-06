class CategoriesController < ApplicationController
  def index
      @categories = Category.all
      @categories_index = Category.includes(:bikes)
  end

  def show
    if params[:query].present?
      # Perform search on bikes using the query
      @bikes = Bike.global_search(params[:query]).page(params[:page]).per(10)
      @scroll_to_bikes = true
    else
      # Find the category by ID
      @category = Category.find_by(id: params[:id]) # Use `find_by` to avoid exceptions

      if @category.nil?
        flash[:alert] = "Category not found."
        redirect_to categories_path and return # Redirect to the categories index
      else
        @bikes = @category.bikes.page(params[:page]).per(10)
      end
    end
  end

end
