class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  def self.search(search)
    if search
      @flights = Flight.where(departure_airport_id: search[:from_code],
        arrival_airport_id: search[:to_code], time: search[:time])
    else
      @flights = Flight.all
    end
  end

end
