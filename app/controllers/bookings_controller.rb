class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(booking_params[:flight_id])
    @p_num = booking_params[:passenger_count].to_i
    @p_num.times { @booking.passengers.build }

    
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:passenger_count, :flight_id, :passengers_attributes)
  end
end