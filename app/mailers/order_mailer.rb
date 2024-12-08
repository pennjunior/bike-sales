class OrderMailer < ApplicationMailer
  default from: 'contact@bikezsale.us'

  def order_notification(order)
    @order = order
    mail(
      to: 'contact@bikezsale.us',
      subject: "New Order Received: #{@order.name}"
    )
  end
end
