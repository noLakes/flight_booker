class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @search = Flight.search(params[:search])
    @airports = Airport.all
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :time, :duration, :search)
  end

end