class ReviewsController < ApplicationController
  before_action :set_bike, only: %i[new create]
  def index
    @reviews = Review.all
  end

  def new
    @review = @bike.reviews.new
  end

  def create
    @review = @bike.reviews.new(review_params)

    if @review.save
      redirect_to @bike, notice: 'Review was successfully created.'
    else
      render :new, alert: 'There was an error creating the review.'
    end
  end

  private
  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def review_params
    params.require(:review).permit(:reviewer_name, :rating, :content, :bike_id )
  end
end
