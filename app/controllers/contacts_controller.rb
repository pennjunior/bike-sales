class ContactsController < ApplicationController
  def new
    # Render the contact form
  end

  def create
    contact_params = params.require(:contact).permit(:name, :email, :subject, :message)

    # Send the email
    ContactMailer.contact_email(contact_params).deliver_now

    # Show a success message
    flash[:notice] = "Your message has been sent successfully. We'll get back to you soon!"
    redirect_to contact_path
  rescue StandardError => e
    # Handle errors gracefully
    flash[:alert] = "Failed to send your message. Please try again later."
    render :new
  end
end
