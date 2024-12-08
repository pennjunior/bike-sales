class ContactMailer < ApplicationMailer
  default from: 'contact@bikezsale.us'

  def contact_email(name, email, subject, message)
    @name = name
    @message = message

    mail(
      to: 'contact@bikezsale.us',
      subject: "New Contact Form Submission: #{subject}",
      reply_to: email
    )
  end
end
