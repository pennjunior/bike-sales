class BikeMailer < ApplicationMailer
  default from: 'contact@bikezsale.us'
  def bike_saved_notification(saved_bike)
    @saved_bike = saved_bike
    @bike = saved_bike.bike
    @user = saved_bike.user

    mail(
      to: 'contact@bikezsale.us',
      subject: "Bike Saved: #{@bike.model}"
    )
  end
end
