class ContactsController < ApplicationController
  def new
    @contact = OpenStruct.new # For form_with compatibility
  end

  def create
    # Fetch the contact form params
    name = params[:name]
    email = params[:email]
    subject = params[:subject]
    message = params[:message]

    # Send the email
    ContactMailer.contact_email(name, email, subject, message).deliver_now

    # Success message and redirect
    flash[:notice] = "Your message has been sent successfully. We'll get back to you soon!"
    redirect_to contact_path
  rescue StandardError => e
    # Handle errors gracefully
    Rails.logger.error("Error sending email: #{e.message}")
    flash[:alert] = "Failed to send your message. Please try again later."
    render :new
  end
end
