class ContactMailer < ApplicationMailer
  def invoice_email
    @invoice = params[:invoice]
    @url  = "http://example.com/login"
    mail(to: @invoice.email, subject: "Welcome to My Awesome Site")
  end
end
