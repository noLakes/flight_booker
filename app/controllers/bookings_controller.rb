class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit()
  end
end