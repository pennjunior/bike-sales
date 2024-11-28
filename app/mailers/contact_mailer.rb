class ContactMailer < ApplicationMailer
  default from: 'no-reply@example.com'

  def contact_email(contact_params)
    @name = contact_params[:name]
    @message = contact_params[:message]
    @subject = contact_params[:subject]
    @sender_email = contact_params[:email]

    mail(
      to: 'martinkunis114@gmail.com',
      subject: "New Contact Form Submission: #{@subject}"
    )
  end
end
