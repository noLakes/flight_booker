class PassengerMailer < ApplicationMailer

  def thank_you_email
    @passenger = params[:passenger]
    @url = 'http://example.com/login'
    mail(to: @passenger.email, subject: "Thank you for booking with Flight Booker!")
  end
end
