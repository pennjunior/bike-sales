class OrderMailer < ApplicationMailer
  default from: 'contact@bikezsale.us'

  def order_notification(order, bike_photo_url)
    @order = order
    @bike_photo_url = bike_photo_url
    mail(
      to: 'contact@bikezsale.us',
      subject: "New Order Received: #{@order.name}"
    )
  end
end
