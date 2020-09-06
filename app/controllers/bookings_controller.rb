class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(booking_params[:flight_id])
    booking_params[:passenger_count].to_i.times { @booking.passengers.build }

    
  end

  def create
    @booking = Booking.new(booking_params)

    booking_params[:passengers_attributes].each do |p|
      @booking.passengers.build(:name => p[0], :email => p[1])
    end

    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:passenger_count, :flight_id,
      passengers_attributes:[:name, :email])
  end
end