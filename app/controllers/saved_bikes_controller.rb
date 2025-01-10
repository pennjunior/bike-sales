class SavedBikesController < ApplicationController
  before_action :authenticate_user! # Ensure user is logged in
  before_action :set_bike, only: %i[create destroy]
  # def index
  #   @saved_bikes = current_user.saved_bikes.all
  # end
  # Action to save the bike
  include SavedBikesHelper

def create
  @saved_bike = current_user.saved_bikes.new(bike: @bike)

  if @saved_bike.save
    BikeMailer.bike_saved_notification(@saved_bike).deliver_now
    respond_to do |format|
      format.html { redirect_to @bike, notice: "Bike saved successfully!" }
      format.json { render json: { success: true, saved: true } }
      format.js { render js: update_button_js(@bike) }
    end
  else
    respond_to do |format|
      format.html { redirect_to @bike, alert: "Already Saved" }
      format.json { render json: { success: false, error: @saved_bike.errors.full_messages }, status: :unprocessable_entity }
    end
  end
end


  # Action to unsave the bike
  def destroy
    # if @saved_bike&.destroy
    #   respond_to do |format|
    #     format.html { redirect_to @bike, notice: "Bike removed successfully!" }
    #     format.json { render json: { success: true, saved: false } }
    #   end
    # else
    #   respond_to do |format|
    #     format.html { redirect_to @bike, alert: "Unable to remove bike." }
    #     format.json { render json: { success: false }, status: :unprocessable_entity }
    #   end
    # end
      saved_bike = current_user.saved_bikes.find_by(bike: @bike)
      saved_bike&.destroy
      redirect_to saved_path, notice: "Bike has been removed from saved!"

  end

  private

  def set_bike
    @bike = Bike.friendly.find(params[:bike_id]) # Find the bike using FriendlyId
  end
end
