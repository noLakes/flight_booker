class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:booking][:flight_id])
    params[:booking][:passenger_count].to_i.times { @booking.passengers.build } 
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all.order("created_at DESC")
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_count,
      passengers_attributes:[:name, :email])
  end
end