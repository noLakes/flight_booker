class FlightsController < ApplicationController

  def index
    @flights = Flight.all
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

  end

end