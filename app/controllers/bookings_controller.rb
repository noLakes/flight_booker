class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(booking_params[:flight_id])
    @passenger_count = booking_params[:passenger_count].to_i
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:passenger_count, :flight_id)
  end
end